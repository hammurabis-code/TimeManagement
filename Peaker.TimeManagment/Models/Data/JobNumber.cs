using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data;

namespace Peaker.TimeManagment.Models.Data
{
    public class JobNumber
    {
        public int Id { get; set; }
        public int UserDetailId { get; set; }
        public string JobNumberValue { get; set; }

        public static JobNumber JobnumberFactory(IDataRecord record)
        {
            return new JobNumber
            {
                Id = record.GetInt32(record.GetOrdinal("Id")),
                UserDetailId = record.GetInt32(record.GetOrdinal("UserDetailId")),
                JobNumberValue = record.GetString(record.GetOrdinal("JobNumberValue")),
            };
        }
    }
}