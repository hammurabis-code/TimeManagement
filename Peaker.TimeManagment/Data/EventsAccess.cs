using Newtonsoft.Json;
using Peaker.TimeManagment.Models.Enums;
using Peaker.TimeManagment.Models.Data;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace Peaker.TimeManagment.Data
{
    public class EventsAccess : DataAccess
    {
        private const string LogFileBase = "PeakerEventLog_";

        public void LogException(Exception ex) {
            var exceptionEvent = new PeakerEvent()
            {
                TimeStamp = DateTime.Now,
                UserId = string.Empty,
                EventType = EventTypes.Exception,
                Data = ex,
                ObjectId = -1
            };
            SaveEvent(exceptionEvent);
        }

        public void SaveEvent(PeakerEvent peakerEvent)
        {
            try
            {
                ExecuteNonQuery(Constants.InsertPeakerEventProcedure, peakerEvent.GetInsertParameters());               
            }
            catch {
                var directory = $@"{HttpRuntime.AppDomainAppPath}Logs";
                if (!Directory.Exists(directory))
                {
                    Directory.CreateDirectory(directory);
                }
                var currentFile = Path.Combine(directory, $"{LogFileBase}{DateTime.Now.Day}_{DateTime.Now.Month}_{DateTime.Now.Year}.txt");

                using (StreamWriter sw = File.AppendText(currentFile))
                {
                    sw.WriteLine($"New Event {DateTime.Now.ToShortDateString()}");
                    sw.WriteLine($"Id: { peakerEvent.Id}");
                    sw.WriteLine($"EventType: { peakerEvent.EventType.ToString()}");
                    sw.WriteLine($"ObjectId: { peakerEvent.ObjectId}");
                    sw.WriteLine($"UserId: { peakerEvent.UserId}");
                    sw.WriteLine($"Data: {JsonConvert.SerializeObject(peakerEvent.Data)}");
                    sw.WriteLine();
                }
            }
        }
    }
}