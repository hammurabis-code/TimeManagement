using System.Collections.Generic;
using System.Data;

namespace Peaker.TimeManagment.Models.Data
{
    public class WorkCode
    {
        public int Id { get; set; }
        public string BaseCode { get; set; }
        public string Description { get; set; }
        public string Area { get; set; }
        public string Sub { get; set; }
        public bool IsJobNumberRequired { get; set; }
        public bool IsEngineeringCode { get; set; }
        public bool IsFieldServiceCode { get; set; }
        public bool IsGovernmentCode { get; set; }
        public bool IsOfficeCode { get; set; }
        public bool IsShopCode { get; set; }
        public bool IsActive { get; set; }

        public static WorkCode WorkCodeFactory(IDataRecord record)
        {
            return new WorkCode
            {
                Id = record.GetInt32(record.GetOrdinal("Id")),
                BaseCode = record.GetString(record.GetOrdinal("BaseCode")),
                Description = record.GetString(record.GetOrdinal("Description")),
                Area = record.GetString(record.GetOrdinal("Area")),
                Sub = record.GetString(record.GetOrdinal("Sub")),
                IsJobNumberRequired = record.GetBoolean(record.GetOrdinal("IsJobNumberRequired")),
                IsEngineeringCode = record.GetBoolean(record.GetOrdinal("IsEngineeringCode")),
                IsFieldServiceCode = record.GetBoolean(record.GetOrdinal("IsFieldServiceCode")),
                IsGovernmentCode = record.GetBoolean(record.GetOrdinal("IsGovernmentCode")),
                IsOfficeCode = record.GetBoolean(record.GetOrdinal("IsOfficeCode")),
                IsShopCode = record.GetBoolean(record.GetOrdinal("IsShopCode")),
                IsActive = record.GetBoolean(record.GetOrdinal("IsActive")),
            };
        }

        public Dictionary<string, object> GetParameters() {
            var paramDictionary = new Dictionary<string, object>();
            paramDictionary.Add("p_Id", Id);
            paramDictionary.Add("p_BaseCode", BaseCode);
            paramDictionary.Add("p_Description", Description);
            paramDictionary.Add("p_Area", Area);
            paramDictionary.Add("p_Sub", Sub);
            paramDictionary.Add("p_IsJobNumberRequired", IsJobNumberRequired);
            paramDictionary.Add("p_IsEngineeringCode", IsEngineeringCode);
            paramDictionary.Add("p_IsFieldServiceCode", IsFieldServiceCode);
            paramDictionary.Add("p_IsGovernmentCode", IsGovernmentCode);
            paramDictionary.Add("p_IsOfficeCode", IsOfficeCode);
            paramDictionary.Add("p_IsShopCode", IsShopCode);
            paramDictionary.Add("p_IsActive", IsActive);
            return paramDictionary;
        }

    }
}