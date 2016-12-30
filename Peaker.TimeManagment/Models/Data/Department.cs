using System.Reflection;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data;

namespace Peaker.TimeManagment.Models.Data
{
    public class Department
    {
        public int Id { get; set; }
        public string Description { get; set; }

        public static Department DepartmentFactory(IDataRecord record)
        {
            return new Department
            {
                Id = record.GetInt32(record.GetOrdinal("Id")),
                Description = record.GetString(record.GetOrdinal("Description")),
            };
        }

    }
}