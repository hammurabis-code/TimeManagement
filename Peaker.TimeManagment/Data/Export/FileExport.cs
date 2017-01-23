using Peaker.TimeManagment.Models.File;
using System;
using Peaker.TimeManagment.Models.Filters;
using System.IO;
using System.Security.Principal;
using System.Text;
using Peaker.TimeManagment.Models.Data;
using System.Linq;
using Peaker.TimeManagment.Models.Enums;

namespace Peaker.TimeManagment.Data.Export
{
    public class FileExport : IFileExport
    {
        public MemoryStream GetExportFile(EntryFilter filter, IPrincipal user, ITimeEntryAccess timeEntryAccess)
        {
            var sb = new StringBuilder();
            sb.AppendLine("CODE,DATE,HOURS,JOB_NO");
            var entries = timeEntryAccess.GetTimeEntries(filter, user);
            foreach (var entry in entries)
            {
                foreach (var hours in entry.hours)
                {
                    var hoursSuffix = string.Empty;
                    switch (hours.HoursType)
                    {
                        case HourTypes.Regular:
                            hoursSuffix = "HRS";
                            break;
                        case HourTypes.Overtime:
                            hoursSuffix = "OT";
                            break;
                        case HourTypes.DoubleTime:
                            hoursSuffix = "DT";
                            break;
                    }
                    sb.AppendLine($"{entry.workCode.BaseCode}-{hoursSuffix},{entry.entryDate.ToShortDateString()},{hours.Duration}, J00{entry.jobnumber}");
                }
                timeEntryAccess.SetEntryExportedToNavision(entry);
            }


            //var usersWithEntries = entries.GroupBy(e => e.userDetailId).Select(u => u.ToList()).ToList();
            //foreach (var userWithEntries in usersWithEntries)
            //{
            //    var entriesPerDay = userWithEntries.GroupBy(u => u.entryDate).Select(u => u.ToList()).ToList();
            //    foreach (var entryPerDay in entriesPerDay)
            //    {
            //        bool splitCalculated = false;
            //        decimal hoursTotal = 0;
            //        foreach (var entry in entryPerDay)
            //        {

            //            var hours = entry.hours.Sum(h => h.Duration);
            //            hoursTotal += hours;
            //            if (hoursTotal > 40 && !splitCalculated)
            //            {
            //                var overtimeHours = hoursTotal - 40;
            //                var regularHours = hours - overtimeHours;
            //                if (regularHours > 0)
            //                {
            //                    sb.AppendLine($"{entry.workCode.BaseCode}-HRS,{entry.entryDate.ToShortDateString()},{regularHours}, J00{entry.jobnumber}");
            //                }
            //                sb.AppendLine($"{entry.workCode.BaseCode}-OT,{entry.entryDate.ToShortDateString()},{overtimeHours}, J00{entry.jobnumber}");
            //                splitCalculated = true;
            //            }
            //            else if (hoursTotal > 40 && splitCalculated)
            //            {
            //                sb.AppendLine($"{entry.workCode.BaseCode}-OT,{entry.entryDate.ToShortDateString()},{hours}, J00{entry.jobnumber}");
            //            }
            //            else
            //            {
            //                sb.AppendLine($"{entry.workCode.BaseCode}-HRS,{entry.entryDate.ToShortDateString()},{hours}, J00{entry.jobnumber}");
            //            }

            //            timeEntryAccess.SetEntryExportedToNavision(entry);
            //        }
            //    }
            //}
            MemoryStream stream = new MemoryStream();
            StreamWriter writer = new StreamWriter(stream);
            writer.Write(sb.ToString());
            writer.Flush();
            stream.Position = 0;
            return stream;
        }
        public MemoryStream GetExportFileForPayroll(EntryFilter filter, IPrincipal user, ITimeEntryAccess timeEntryAccess)
        {
            var sb = new StringBuilder();
            sb.AppendLine("Name,Date Worked,Work Code,Hours (Total), Sub");
            var entries = timeEntryAccess.GetTimeEntries(filter, user);
            var usersWithEntries = entries.GroupBy(e => e.userDetailId).Select(u => u.ToList()).ToList();
            foreach (var userWithEntries in usersWithEntries) {
                var entriesPerDay = userWithEntries.GroupBy(u => u.entryDate).Select(u => u.ToList()).ToList();
                foreach (var entryPerDay in entriesPerDay)
                {
                    foreach (var entry in entryPerDay)
                    {
                        //sb.AppendLine($"{entry.workCode.BaseCode}-HRS,{entry.entryDate.ToShortDateString()},{hours}, J00{entry.jobnumber}");
                    }
                }
            }
                //timeEntryAccess.SetEntryExportedToPayroll(entry);
            
            MemoryStream stream = new MemoryStream();
            StreamWriter writer = new StreamWriter(stream);
            writer.Write(sb.ToString());
            writer.Flush();
            stream.Position = 0;
            return stream;
        }
    }

    
}