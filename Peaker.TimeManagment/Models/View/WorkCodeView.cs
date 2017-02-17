using System.Data;

namespace Peaker.TimeManagment.Models.View
{
    public class WorkCodeView
    {        
        public int DepartmentId { get; set; }
        public int WorkCodeId { get; set; }
        public string baseCode { get; set; }
        public string description { get; set; }
        public string area { get; set; }
        public string sub { get; set; }
        public bool IsJobNumberRequired { get; set; }
        public bool IsSelected { get; set; }

        public static WorkCodeView WorkCodeViewFactory(IDataRecord record)
        {
            return new WorkCodeView
            {
                DepartmentId = -1,
                baseCode = record.GetString(record.GetOrdinal("BaseCode")),
                WorkCodeId = record.GetInt32(record.GetOrdinal("Id")),
                description = record.GetString(record.GetOrdinal("Description")),
                area = record.GetString(record.GetOrdinal("Area")),
                sub = record.GetString(record.GetOrdinal("Sub")),
                IsJobNumberRequired = record.GetBoolean(record.GetOrdinal("IsJobNumberRequired")),
            };
        }
    }
}