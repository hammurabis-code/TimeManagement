using Peaker.TimeManagment.Data;
using Peaker.TimeManagment.Models;
using Peaker.TimeManagment.Models.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Peaker.TimeManagment.Controllers
{
    [Authorize]
    [RoutePrefix("api/Values")]
    public class ValuesController : ApiController
    {
        // GET api/values
        [Route("GetWorkCodes")]
        [HttpGet]
        public List<WorkCode> GetCodes()
        {
            return ValuesAccess.GetAllWorkCodes();
        }

        // GET api/values/5
        //public string Get(int id)
        //{
        //    return "value";
        //}

        // POST api/values
        //public void Post([FromBody]string value)
        //{
        //}

        //// PUT api/values/5
        //public void Put(int id, [FromBody]string value)
        //{
        //}

        //// DELETE api/values/5
        //public void Delete(int id)
        //{
        //}
    }
}
