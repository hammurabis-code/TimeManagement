using Peaker.TimeManagment.Models;
using Peaker.TimeManagment.Models.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;

namespace Peaker.TimeManagment.Data
{

    public static class WorkCodeAccess
    {
        public static List<WorkCode> GetAllWorkCodes() {
            using (var context = new PeakerContext())
            {
                return context.WorkCodes.ToList();
            }
        }

        public static int AddOrUpdateWorkCode(WorkCode code)
        {
            if (code.Id == -1)
            {
                return AddCode(code);
            }
            else {
                UpdateCode(code);
                return code.Id;
            }
        }

        private static void UpdateCode(WorkCode code)
        {
            using (var context = new PeakerContext()) {
                var targetCode = context.WorkCodes.FirstOrDefault(c => c.Id == code.Id);
                if (targetCode != null)
                {
                    targetCode.Description = code.Description;
                    targetCode.Area = code.Area;
                    targetCode.BaseCode = code.BaseCode;
                    targetCode.IsEngineeringCode = code.IsEngineeringCode;
                    targetCode.IsFieldServiceCode = code.IsFieldServiceCode;
                    targetCode.IsGovernmentCode = code.IsGovernmentCode;
                    targetCode.IsJobNumberRequired = code.IsJobNumberRequired;
                    targetCode.IsOfficeCode = code.IsOfficeCode;
                    targetCode.Sub = code.Sub;
                    context.SaveChanges();
                }
                else {
                    throw new ArgumentException("Code Id not valid.");
                }
            }
        }

        private static int AddCode(WorkCode code)
        {
            using (var context = new PeakerContext())
            {
                context.WorkCodes.Add(code);
                context.SaveChanges();
                return code.Id;
            }
        }
    }
}