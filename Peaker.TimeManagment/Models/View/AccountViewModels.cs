using Peaker.TimeManagment.Models.Data;
using Peaker.TimeManagment.Models.View;
using System;
using System.Collections.Generic;

namespace Peaker.TimeManagment.Models.View
{
    // Models returned by AccountController actions.

    public class ExternalLoginViewModel
    {
        public string Name { get; set; }

        public string Url { get; set; }

        public string State { get; set; }
    }

    public class ManageInfoViewModel
    {
        public string LocalLoginProvider { get; set; }

        public string Email { get; set; }

        public IEnumerable<UserLoginInfoViewModel> Logins { get; set; }

        public IEnumerable<ExternalLoginViewModel> ExternalLoginProviders { get; set; }
    }

    public class UserInfoViewModel
    {

        public string UserId { get; set; }

        public string Username { get; set; }

        public string AccountingName { get; set; }
        
        public int DefaultJobEntries { get; set; }

        public List<JobNumber> UsedJobNumbers { get; set; }

        public List<DepartmentView> UserDepartments { get; set; }

        public List<WorkCodeView> UserWorkCodes { get; set; }

        public UserInfoViewModel(string id,string username) {
            UserId = id;
            Username = username;
            UsedJobNumbers = new List<JobNumber>();
            UserDepartments = new List<DepartmentView>();
            UserWorkCodes = new List<WorkCodeView>();
        }
    }

    public class UserLoginInfoViewModel
    {
        public string LoginProvider { get; set; }

        public string ProviderKey { get; set; }
    }
}
