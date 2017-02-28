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
using Peaker.TimeManagment.Models.File;

namespace Peaker.TimeManagment.Data
{
    public class TimeEntryAccess : DataAccess, ITimeEntryAccess
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
                if (UserAccess.IsUserAdmin(user))
                {
                    sb.Append($"WHERE UserDetailId <> -1 ");
                }
                else {
                    sb.Append($"WHERE UserDetailId = {filter.CurrentUserDetailId} ");
                }
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
                new EventsAccess().LogException(ex);
                return null;
            }
        }

        public List<PayrollExport> GetEntriesForPayrollExport(EntryFilter filter, IPrincipal user) {
            var filterParams = new Dictionary<string, object>();
            try
            {
                return Retrieve(PayrollExport.PayrollExportFactory, BuildPayrollQuery(filter, filterParams), filterParams, false).ToList();
            }
            catch (Exception ex) {
                new EventsAccess().LogException(ex);
                throw;
            }
        }
       

        private string BuildPayrollQuery(EntryFilter filter, Dictionary<string, object> filterParams) {
            StringBuilder sb = new StringBuilder();
            sb.AppendLine(@"SELECT U.AccountingName, T.Id AS TimeEntryId, T.UserDetailId, T.EntryDate, W.BaseCode, W.Description, T.JobNumber, W.sub, Sum(H.Duration) AS Hours
                        FROM userdetail U
                        INNER JOIN timeentry T
                            ON U.Id = T.UserDetailId
                        INNER JOIN workcode W
                            ON T.WorkCodeId = W.Id
                        INNER JOIN timeentryhours H ON T.Id = H.TimeEntryId
                        WHERE 1 = 1 ");
            if (filter.FilterStartDate != null)
            {
                sb.AppendLine("AND T.EntryDate >= ?p_startDate ");
                filterParams.Add("?p_startDate", filter.FilterStartDate.Value.Date);
            }
            if (filter.FilterEndDate != null)
            {
                sb.AppendLine("AND T.EntryDate <= ?p_endDate ");
                filterParams.Add("?p_endDate", filter.FilterEndDate.Value.Date);
            }
            if (filter.CurrentUserDetailId > 0) {
                sb.AppendLine("AND U.Id = ?p_userDetailId ");
                filterParams.Add("?p_userDetailId", filter.CurrentUserDetailId);
            }
            else if (filter.UserDetailId != null)
            {
                sb.Append($"AND UserDetailId = {filter.UserDetailId} ");
            }
            if (filter.ExportedToNavision != null)
            {
                if ((bool)filter.ExportedToNavision)
                {
                    sb.AppendLine("AND ExportedToNavision = 1 ");
                }
                else
                {
                    sb.AppendLine("AND ExportedToNavision = 0 ");
                }
            }
            if (filter.ExportedToPayroll != null)
            {
                if ((bool)filter.ExportedToPayroll)
                {
                    sb.AppendLine("AND ExportedToPayroll = 1 ");
                }
                else
                {
                    sb.AppendLine("AND ExportedToPayroll = 0 ");
                }
            }            
            sb.AppendLine(@"GROUP BY U.AccountingName,TimeEntryId, T.UserDetailId, T.EntryDate, W.BaseCode, W.Description, W.sub;");

            return sb.ToString();
        }


        private List<TimeEntryView> FillTimeEntryView(List<TimeEntry> entries)
        {
            var workCodeAccess = new WorkCodeAccess();
            var finalEntries = new List<TimeEntryView>();
            foreach (var entry in entries)
            {
                var accountingName = RetrieveSingleConvertible<string>($@"SELECT AccountingName FROM peakertimemanagement.userdetail WHERE Id = {entry.UserDetailId};", null, false); 
                entry.Hours = Retrieve(TimeEntryHours.TimeEntryHoursFactory, Constants.GetHoursForTimeEntryProcedure, entry.GetIdParameters()).ToList();
                var newEntry = new TimeEntryView(entry, accountingName);
                newEntry.hours = entry.Hours;
                var code = workCodeAccess.GetWorkCode(entry.WorkCodeId);
                code.isSelected = true;
                newEntry.workCode = code;
                finalEntries.Add(newEntry);
            }
            return finalEntries;
        }
               

        public void SetEntryExportedToNavision(TimeEntryView entry)
        {
            ExecuteNonQuery(Constants.SetExportedToNavisionProcedure, GetSingleParameter("p_timeEntryId", entry.id));
        }

        public void SetEntryExportedToPayroll(int entryId)
        {
            ExecuteNonQuery(Constants.SetExportedToPayrollProcedure, GetSingleParameter("p_timeEntryId", entryId));
        }

        public void AddUpdateEntry(TimeEntryView entryToSave, string userId)
        {try
            {
                var eventType = EventTypes.Default;
                var peakerEvent = new PeakerEvent()
                {
                    TimeStamp = DateTime.Now,
                    UserId = userId
                };
                if (entryToSave.id <= 0)
                {
                    eventType = EventTypes.Created;
                    var entryId = RetrieveSingleConvertible<int>(Constants.InsertTimeEntryProcedure, entryToSave.GetInsertParameters());
                    if (entryId != int.MinValue)
                    {
                        entryToSave.id = entryId;
                    }
                }
                else
                {
                    eventType = EventTypes.Updated;
                    ExecuteNonQuery(Constants.UpdateTimeEntryProcedure, entryToSave.GetUpdateParameters());
                }
                peakerEvent.EventType = eventType;
                peakerEvent.ObjectId = entryToSave.id;
                peakerEvent.Data = entryToSave;
                ProcessHours(entryToSave, GetIsShiftWorker(entryToSave.userDetailId));
                new EventsAccess().SaveEvent(peakerEvent);
            }
            catch (Exception ex) {
                new EventsAccess().LogException(ex);
                throw;
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

        private void ProcessHours(TimeEntryView entryToSave, bool isShiftWorker)
        {
            //get all hour entries
            //iterate through each entry
            //for each entry
            // if entry total drives total over 8 hours
            // split entry into two parts
            //regular hours and 
            bool mondayThruFriday = (entryToSave.entryDate.DayOfWeek != DayOfWeek.Saturday && entryToSave.entryDate.DayOfWeek != DayOfWeek.Sunday);
            decimal threshold = isShiftWorker && mondayThruFriday ? 10 : 8;

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
            
            var entryDay = entryToSave.entryDate.DayOfWeek;

            if (entryDay == DayOfWeek.Sunday)
            {
                foreach (var hourEntry in hourEntries)
                {
                    hourEntry.HoursType = HourTypes.DoubleTime;
                    finalHours.Add(hourEntry);
                }
            }
            else if (entryDay == DayOfWeek.Saturday)
            {
                finalHours = ProcessHoursForDay(hourEntries, threshold, HourTypes.Overtime, HourTypes.DoubleTime);
            }
            else
            {
                finalHours = ProcessHoursForDay(hourEntries, threshold, HourTypes.Regular, HourTypes.Overtime);
            }            
            UpdateTimeEntryHours(finalHours);
        }

        private List<TimeEntryHours> ProcessHoursForDay(List<TimeEntryHours> hourEntries, decimal threshold, HourTypes underThresholdType, HourTypes overThresholdType) {
            decimal hours = 0;
            var finalHours = new List<TimeEntryHours>();
            foreach (var hourEntry in hourEntries)
            {
                if (hours > threshold)
                {
                    hourEntry.HoursType = overThresholdType;
                    finalHours.Add(hourEntry);
                }
                else
                {
                    hours += hourEntry.Duration;
                    if (hours > threshold)
                    {
                        AddSplitHourEntries(hours, hourEntry, finalHours, threshold, underThresholdType, overThresholdType);
                    }
                    else
                    {
                        hourEntry.HoursType = underThresholdType;
                        finalHours.Add(hourEntry);
                    }
                }
            }
            return finalHours;
        }

        public void ClearNavisionFlag() {
            ExecuteNonQuery(Constants.UpdateTimeEntryClearNavisionExportProcedure, null);
        }

        public void ClearPayrollExportFlag()
        {
            ExecuteNonQuery(Constants.UpdateTimeEntryClearPayrollExportProcedure, null);
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

        private void AddSplitHourEntries(decimal hours, TimeEntryHours hourEntry, List<TimeEntryHours> finalHours, decimal threshold, HourTypes underThresholdType, HourTypes overThresholdType)
        {
            var overtimeHours = hours - threshold;
            var regularHours = hourEntry.Duration - overtimeHours;
            hourEntry.Duration = regularHours;
            hourEntry.HoursType = underThresholdType;
            finalHours.Add(hourEntry);
            finalHours.Add(new TimeEntryHours()
            {
                TimeEntryId = hourEntry.TimeEntryId,
                Duration = overtimeHours,
                HoursType = overThresholdType
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
            return RetrieveSingleConvertible<bool>(Constants.GetIsSecondShiftProcedure, GetSingleParameter("p_userDetailId", userDetailId));
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