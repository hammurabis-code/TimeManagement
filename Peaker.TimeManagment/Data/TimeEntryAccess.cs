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

namespace Peaker.TimeManagment.Data
{
    public static class TimeEntryAccess
    {
        public static int AddUpdateEntry(TimeEntryView entryToSave)
        {
            int returnId = -1;
            var hours = new HourEntry()
            {
                Duration = entryToSave.hours,
                Type = Constants.HoursType
            };
            using (var context = new PeakerContext())
            {
                if (entryToSave.id != -1)
                {
                    var entry = context.TimeEntries.FirstOrDefault(e => e.Id == entryToSave.id);
                    if (entry != null)
                    {

                        entry.JobNumber = entryToSave.jobnumber;
                        entry.Date = entryToSave.date.Date;
                        entry.Code = entryToSave.workCode;
                        entry.Comments = entryToSave.comments;
                        context.SaveChanges();
                        returnId = entry.Id;
                    }
                    entry.Hours.Clear();
                    entry.Hours.Add(hours);
                }
                else
                {
                    var detail = context.UserDetails.FirstOrDefault(u => u.UserId == entryToSave.userId);
                    if (detail != null)
                    {
                        var entry = new TimeEntry()
                        {
                            JobNumber = entryToSave.jobnumber,
                            Date = entryToSave.date.Date,
                            Code = entryToSave.workCode,
                            Comments = entryToSave.comments,
                            Exported = false,
                        };
                        entry.Hours.Add(hours);
                        detail.TimeEntries.Add(
                            entry);
                        context.SaveChanges();
                        returnId = entry.Id;
                    }
                }
            }
            return returnId;
        }

        public static decimal GetTotalHours(EntryFilter filter, IPrincipal user)
        {
            decimal total = 0;
            var entries = GetTimeEntryViews(filter, user);
            foreach (var entry in entries)
            {
                total += entry.hours;
            }
            return total;
        }

        public static List<TimeEntryView> GetEntries(EntryFilter filter, IPrincipal user)
        {
            return GetTimeEntryViews(filter, user);
        }

        private static List<TimeEntryView> GetTimeEntryViews(EntryFilter filter, IPrincipal user)
        {
            using (var context = new PeakerContext())
            {
                string queryUserId = string.Empty;
                IQueryable<TimeEntry> entries = context.TimeEntries.AsQueryable();
                if (!string.IsNullOrEmpty(filter.UserId))
                {
                    if (UserAccess.IsUserAdmin(user))
                    {
                        queryUserId = filter.UserId;
                    }
                }
                else
                {
                    queryUserId = user.Identity.GetUserId();
                }
                var detail = context.UserDetails.FirstOrDefault(u => u.UserId == queryUserId);
                if (detail != null)
                {
                    entries = entries.Where(e => e.UserDetailId == detail.Id);
                }
                else
                {
                    throw new UserDetailNotFoundException($"The User Id did not match a UserDeatil. Id: {queryUserId}");
                }

                if (filter.EntryId != null)
                {
                    entries = entries.Where(e => e.Id == filter.EntryId);
                }
                if (filter.FilterStartDate != null)
                {
                    var startDate = filter.FilterStartDate.Value.Date;
                    entries = entries.Where(e => e.Date >= startDate);
                }
                if (filter.FilterEndDate != null)
                {
                    var endDate = filter.FilterEndDate.Value.Date;
                    entries = entries.Where(e => e.Date <= endDate);
                }
                if (filter.Exported != null)
                {
                    entries = entries.Where(e => e.Exported == (bool)filter.Exported);
                }
                return entries.Select(entry => new TimeEntryView()
                {
                    id = entry.Id,
                    userId = queryUserId,
                    date = entry.Date,
                    hours = entry.Hours.FirstOrDefault().Duration,
                    workCode = entry.Code,
                    jobnumber = entry.JobNumber,
                    comments = entry.Comments,
                    hoursError = false,
                    jobNumberError = false,
                    workCodeError = false,
                    exported = entry.Exported,
                    index = 0
                })
                .OrderByDescending(e => e.date)
                .ToList();
            }
        }

        public static bool DeleteEntry(TimeEntryView entryToDelete)
        {
            using (var context = new PeakerContext())
            {
                var detail = context.UserDetails.FirstOrDefault(u => u.UserId == entryToDelete.userId);
                if (detail != null)
                {
                    var entry = context.TimeEntries
                   .FirstOrDefault(e => e.Id == entryToDelete.id && e.UserDetailId == detail.Id);
                    if (entry != null)
                    {
                        return DeleteEntryClassic(entry.Id, detail.Id);
                    }
                }

            }
            return false; ;
        }

        public static bool DeleteEntryClassic(int entryId, int userDetailId) {
            string connStr = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            MySqlConnection conn = new MySqlConnection(connStr);
            try
            {
                conn.Open();

                string sql = "deletetimeentry";
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("entryId", entryId);
                cmd.Parameters.AddWithValue("userDetailId", userDetailId);

                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                return false;
                //TODO: log exception
            }
            finally {
                conn.Close();
            }

            return true;
        }
    }
    
}