using Peaker.TimeManagment.Models;
using Peaker.TimeManagment.Models.Data;
using Peaker.TimeManagment.Models.Filters;
using Peaker.TimeManagment.Models.View;
using System.Collections.Generic;
using System.Linq;
using System;
using Peaker.TimeManagment.Models.Exceptions;
using System.Security.Principal;
using Microsoft.AspNet.Identity;
using MySql.Data.MySqlClient;
using System.Data;
using System.Configuration;
using System.Text;
using Peaker.TimeManagment.Models.Enums;
using System.IO;

namespace Peaker.TimeManagment.Data
{
    public class TimeEntryAccess : DataAccess
    {
        public List<TimeEntryView> GetTimeEntries(EntryFilter filter, IPrincipal user)
        {
            //TODO: Parameterize sql
            var sb = new StringBuilder();
            sb.Append("SELECT * FROM peakertimemanagement.timeentry ");
            if (!filter.ShowAllUsers)
            {
                if (filter.UserDetailId != null)
                {
                    if (UserAccess.IsUserAdmin(user))
                    {
                        sb.Append($"WHERE UserDetailId = {filter.UserDetailId} ");
                    }
                }
                else
                {
                    sb.Append($"WHERE UserDetailId = {filter.CurrentUserDetailId} ");
                }
            }
            else
            {
                sb.Append($"WHERE UserDetailId <> -1 ");
            }

            if (filter.EntryId != null)
            {
                sb.Append($"AND Id = {filter.EntryId} ");
            }
            if (filter.FilterStartDate != null)
            {
                var startDate = filter.FilterStartDate.Value.Date;
                sb.Append($"AND EntryDate >= '{startDate.ToString("yyyy-MM-dd")}' ");
            }
            if (filter.FilterEndDate != null)
            {
                var endDate = filter.FilterEndDate.Value.Date;
                sb.Append($"AND EntryDate <= '{endDate.ToString("yyyy-MM-dd")}' ");
            }
            if (filter.RequireJobCode != null && (bool)filter.RequireJobCode) {
                sb.Append($"AND Jobnumber <> '' ");
            }
            if (filter.ExportedToNavision != null) {
                if ((bool)filter.ExportedToNavision)
                {
                    sb.Append("AND ExportedToNavision = 1 ");
                }
                else {
                    sb.Append("AND ExportedToNavision = 0 ");
                }
            }
            if (filter.ExportedToPayroll != null)
            {
                if ((bool)filter.ExportedToPayroll)
                {
                    sb.Append("AND ExportedToPayroll = 1 ");
                }
                else
                {
                    sb.Append("AND ExportedToPayroll = 0 ");
                }
            }
            try
            {
                var entries = Retrieve(TimeEntry.WorkCodeFactory, sb.ToString(), null, false).OrderByDescending(t => t.EntryDate).ToList();
                return FillTimeEntryView(entries);
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        private List<TimeEntryView> FillTimeEntryView(List<TimeEntry> entries)
        {
            var workCodeAccess = new WorkCodeAccess();
            var finalEntries = new List<TimeEntryView>();
            foreach (var entry in entries)
            {
                entry.Hours = Retrieve(TimeEntryHours.TimeEntryHoursFactory, Constants.GetHoursForTimeEntryProcedure, entry.GetIdParameters()).ToList();
                var newEntry = new TimeEntryView(entry);
                newEntry.hours = entry.Hours;
                newEntry.workCode = workCodeAccess.GetWorkCode(entry.WorkCodeId);
                finalEntries.Add(newEntry);
            }
            return finalEntries;
        }

        internal MemoryStream GetExportFile(EntryFilter filter, IPrincipal user)
        {
            var sb = new StringBuilder();
            sb.AppendLine("CODE,DATE,HOURS,JOB_NO");
            var entries = GetTimeEntries(filter, user);
            foreach (var entry in entries)
            {
                foreach (var hours in entry.hours)
                {
                    var hoursSuffix = hours.HoursType == HourTypes.Regular ? "HRS" : "OT";
                    sb.AppendLine($"{entry.workCode.BaseCode}-{hoursSuffix},{entry.entryDate.ToShortDateString()},{hours.Duration}, J00{entry.jobnumber}");
                }
                SetEntryExportedToNavision(entry);
            }
            MemoryStream stream = new MemoryStream();
            StreamWriter writer = new StreamWriter(stream);
            writer.Write(sb.ToString());
            writer.Flush();
            stream.Position = 0;
            return stream;
        }

        private void SetEntryExportedToNavision(TimeEntryView entry)
        {
            ExecuteNonQuery(Constants.SetExportedToNavisionProcedure, GetSingleParameter("p_timeEntryId", entry.id));
        }

        public void AddUpdateEntry(TimeEntryView entryToSave)
        {
            if (entryToSave.id <= 0)
            {
                var entryId = RetrieveSingleConvertible<int>(Constants.InsertTimeEntryProcedure, entryToSave.GetInsertParameters());
                if (entryId != int.MinValue)
                {
                    entryToSave.id = entryId;
                }
            }
            else
            {
                ExecuteNonQuery(Constants.UpdateTimeEntryProcedure, entryToSave.GetUpdateParameters());
            }
            UpdateEntryHours(entryToSave);
        }

        private void UpdateEntryHours(TimeEntryView entryToSave)
        {
            bool isShiftWorker = GetIsShiftWorker(entryToSave.userDetailId);
            if (isShiftWorker)
            {
                ProcessShiftHours(entryToSave);
            }
            else
            {
                ProcessNonShiftHours(entryToSave);
            }
        }

        internal List<RestrictedJobnumber> GetRestrictedJobnumbers()
        {
            return Retrieve(RestrictedJobnumber.RestrictedJobnumberFactory, Constants.GetRestrictedJobnumbersProcedure).ToList();
        }

        private void ProcessShiftHours(TimeEntryView entryToSave)
        {
            throw new NotImplementedException();
        }

        private void ProcessNonShiftHours(TimeEntryView entryToSave)
        {
            //get all hour entries
            //iterate through each entry
            //for each entry
            // if entry total drives total over 8 hours
            // split entry into two parts
            //regular hours and 
            var finalHours = new List<TimeEntryHours>();



            var hoursParams = GetSingleParameter("p_entryDate", entryToSave.entryDate.ToString("yyyy-MM-dd"));
            hoursParams.Add("p_userDetailId", entryToSave.userDetailId);
            hoursParams.Add("p_timeEntryIdToSkip", entryToSave.id);

            var hourEntries = Retrieve(TimeEntryHours.TimeEntryHoursFactory, Constants.GetHoursByDateProcedure, hoursParams).ToList();

            hourEntries = MergeRecords(hourEntries);
            hourEntries.Add(new TimeEntryHours()
            {
                Id = int.MinValue,
                TimeEntryId = entryToSave.id,
                Duration = entryToSave.userHours,
                HoursType = HourTypes.Regular
            });
            decimal hours = 0;
            foreach (var hourEntry in hourEntries)
            {
                if (hours > 8)
                {
                    hourEntry.HoursType = HourTypes.Overtime;
                    finalHours.Add(hourEntry);
                }
                else
                {
                    hours += hourEntry.Duration;
                    if (hours > 8)
                    {
                        AddSplitHourEntries(hours, hourEntry, finalHours);
                    }
                    else
                    {
                        hourEntry.HoursType = HourTypes.Regular;
                        finalHours.Add(hourEntry);
                    }
                }
            }

            UpdateTimeEntryHours(finalHours);
        }

        public void ClearNavisionFlag() {
            ExecuteNonQuery(Constants.UpdateTimeEntryClearNavisionExportProcedure, null);
        }

        private void UpdateTimeEntryHours(List<TimeEntryHours> finalHours)
        {
            foreach (var entry in finalHours)
            {
                ExecuteNonQuery(Constants.DeleteHoursForTimeEntry, entry.GetTimeEntryIdParameters());
            }
            foreach (var entry in finalHours)
            {
                ExecuteNonQuery(Constants.InsertTimeEntryHoursProcedure, entry.GetInsertParameters());
            }
        }

        private void AddSplitHourEntries(decimal hours, TimeEntryHours hourEntry, List<TimeEntryHours> finalHours)
        {
            var overtimeHours = hours - 8;
            var regularHours = hourEntry.Duration - overtimeHours;
            hourEntry.Duration = regularHours;
            hourEntry.HoursType = HourTypes.Regular;
            finalHours.Add(hourEntry);
            finalHours.Add(new TimeEntryHours()
            {
                TimeEntryId = hourEntry.TimeEntryId,
                Duration = overtimeHours,
                HoursType = HourTypes.Overtime
            });
        }

        private List<TimeEntryHours> MergeRecords(List<TimeEntryHours> hourEntries)
        {
            var returnEntries = new List<TimeEntryHours>();
            var floatingEntries = new List<TimeEntryHours>();
            foreach (var entry in hourEntries)
            {
                floatingEntries.Clear();
                if (!returnEntries.Any(e => e.TimeEntryId == entry.TimeEntryId))
                {
                    floatingEntries.AddRange(hourEntries.Where(e => e.TimeEntryId == entry.TimeEntryId));
                    entry.Duration = floatingEntries.Sum(e => e.Duration);
                    returnEntries.Add(entry);
                }
            }
            return returnEntries;
        }

        private bool GetIsShiftWorker(int userDetailId)
        {
            return false;
        }

        public decimal GetTotalHours(EntryFilter filter, IPrincipal user)
        {
            decimal total = 0;
            var entries = GetTimeEntries(filter, user);
            foreach (var entry in entries)
            {
                total += entry.userHours;
            }
            return total;
        }

        public void DeleteEntry(TimeEntry entryToDelete)
        {
            ExecuteNonQuery(Constants.DeleteTimeEntryProcedure, GetSingleParameter("p_entryId", entryToDelete.Id));
        }
    }

}