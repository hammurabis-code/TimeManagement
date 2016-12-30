using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Peaker.TimeManagment.Models.Data
{
    public class RestrictedJobnumber
    {
        public int Id { get; set; }
        public string Jobnumber {get;set;}

        public static RestrictedJobnumber RestrictedJobnumberFactory(IDataRecord record)
        {
            return new RestrictedJobnumber
            {
                Id = record.GetInt32(record.GetOrdinal("Id")),                
                Jobnumber = record.GetString(record.GetOrdinal("Jobnumber")),
            };
        }
    }
}