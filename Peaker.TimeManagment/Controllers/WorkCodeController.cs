using Peaker.TimeManagment.Data;
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
    [RoutePrefix("api/WorkCodes")]
    public class WorkCodeController : ApiController
    {
        [Route("GetWorkCodes")]
        [HttpGet]
        public IHttpActionResult GetCodes()
        {
            return Ok(WorkCodeAccess.GetAllWorkCodes());
        }

        [HttpPost]
        public IHttpActionResult Post([FromBody] WorkCode code) {
            if (User.Identity != null)
            {
                return Ok(WorkCodeAccess.AddOrUpdateWorkCode(code));
            }
            else return Unauthorized();
        }
    }
}
