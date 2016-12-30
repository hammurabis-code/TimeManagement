using MySql.Data.MySqlClient;
using Peaker.TimeManagment.Models;
using Peaker.TimeManagment.Models.Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Http;

namespace Peaker.TimeManagment.Data
{

    public class WorkCodeAccess : DataAccess
    {
        public IEnumerable<WorkCode> GetAllWorkCodes()
        {
           return Retrieve(WorkCode.WorkCodeFactory, Constants.GetAllWorkCodesProcedure, new Dictionary<string, object>());
        }

        public void AddOrUpdateWorkCode(WorkCode code)
        {
            if (code.Id == -1)
            {
                ExecuteNonQuery(Constants.InsertUserWorkCodeProcedure, code.GetParameters());
            }
            else
            {
                ExecuteNonQuery(Constants.UpdateWorkCodeProcedure, code.GetParameters());
            }
        }

        internal WorkCode GetWorkCode(int workCodeId)
        {
            var paramDictionary = new Dictionary<string, object>();
            paramDictionary.Add("p_workCodeId", workCodeId);
            return RetrieveSingle(WorkCode.WorkCodeFactory, Constants.GetWorkCodeProcedure, paramDictionary);
        }
    }
}