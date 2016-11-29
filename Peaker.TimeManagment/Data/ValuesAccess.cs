using Peaker.TimeManagment.Models;
using Peaker.TimeManagment.Models.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Peaker.TimeManagment.Data
{
    public static class ValuesAccess
    {
        public static List<WorkCode> GetAllWorkCodes() {
            using (var context = new PeakerContext())
            {
                return context.WorkCodes.ToList();
            }
        }
    }
}