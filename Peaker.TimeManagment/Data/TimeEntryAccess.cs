using Peaker.TimeManagment.Models;
using Peaker.TimeManagment.Models.Data;
using Peaker.TimeManagment.Models.Filters;
using Peaker.TimeManagment.Models.View;
using System.Collections.Generic;
using System.Linq;

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
                        entry.Date = entryToSave.date;
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
                            Date = entryToSave.date,
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

        public static List<TimeEntryView> GetEntries(EntryFilter filter)
        {
            using (var context = new PeakerContext())
            {
                string userId = string.Empty;
                var entries = context.TimeEntries.AsQueryable();
                if (!string.IsNullOrEmpty(filter.UserId))
                {
                    userId = filter.UserId;
                    var detail = context.UserDetails.FirstOrDefault(u => u.UserId == filter.UserId);
                    if (detail != null)
                    {
                        entries.Where(e => e.UserDetailId == detail.Id);
                    }
                }
                if (filter.EntryId != null)
                {
                    entries.Where(e => e.Id == filter.EntryId);
                }
                if (filter.FilterStartDate != null)
                {
                    entries.Where(e => e.Date >= filter.FilterStartDate);
                }
                if (filter.FilterEndDate != null)
                {
                    entries.Where(e => e.Date <= filter.FilterEndDate);
                }
                if (filter.Exported != null)
                {
                    entries.Where(e => e.Exported == (bool)filter.Exported);
                }
                return entries.Select(entry => new TimeEntryView()
                {
                    id = entry.Id,
                    userId = userId,
                    date = entry.Date,
                    hours = entry.Hours.FirstOrDefault().Duration ,
                    workCode = entry.Code,
                    jobnumber = entry.JobNumber,
                    comments = entry.Comments,
                    hoursError = false,
                    jobNumberError = false,
                    workCodeError = false,
                    exported = entry.Exported,
                    index = 0
                }).ToList();
            }
        }
    }
}