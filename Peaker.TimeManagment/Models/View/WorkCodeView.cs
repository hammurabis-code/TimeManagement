using System.Data;

namespace Peaker.TimeManagment.Models.View
{
    public class WorkCodeView
    {        
        public int workCodeId { get; set; }
        public string baseCode { get; set; }
        public string description { get; set; }
        public bool isJobNumberRequired { get; set; }
        public bool isSelected { get; set; }

        public static WorkCodeView WorkCodeViewFactory(IDataRecord record)
        {
            return new WorkCodeView
            {
                baseCode = record.GetString(record.GetOrdinal("BaseCode")),
                workCodeId = record.GetInt32(record.GetOrdinal("Id")),
                description = record.GetString(record.GetOrdinal("Description")),
                isJobNumberRequired = record.GetBoolean(record.GetOrdinal("IsJobNumberRequired")),
            };
        }
    }
}