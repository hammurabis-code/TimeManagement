using Newtonsoft.Json;
using Peaker.TimeManagment.Models.Enums;
using System;
using System.Collections.Generic;
using System.Data;

namespace Peaker.TimeManagment.Models.Data
{
    public class PeakerEvent
    {
        public int Id { get; set; }
        public int ObjectId { get; set; }
        public EventTypes EventType { get; set; }
        public DateTime TimeStamp { get; set; }
        public object Data { get; set; }
        public string UserId { get; set; }

        public PeakerEvent() {

        }

        public Dictionary<string, object> GetInsertParameters()
        {
            var paramDictionary = new Dictionary<string, object>();
            paramDictionary.Add("p_Id", Id);            
            paramDictionary.Add("p_ObjectId", ObjectId);
            paramDictionary.Add("p_EventType", (int)EventType);
            paramDictionary.Add("p_TimeStamp", TimeStamp.ToString("yyyy-MM-dd HH:mm:ss"));
            paramDictionary.Add("p_Data", JsonConvert.SerializeObject(Data));
            paramDictionary.Add("p_UserId", UserId);
            return paramDictionary;
        }

        public static PeakerEvent PeakerEventFactory(IDataRecord record)
        {
            return new PeakerEvent
            {
                Id = record.GetInt32(record.GetOrdinal("Id")),                
                ObjectId = record.GetInt32(record.GetOrdinal("ObjectId")),
                EventType = (EventTypes)record.GetInt32(record.GetOrdinal("EventType")),
                TimeStamp = record.GetDateTime(record.GetOrdinal("TimeStamp")),
                Data = record.GetString(record.GetOrdinal("Data")),
                UserId = record.GetString(record.GetOrdinal("UserId")),
            };
        }
    }
}