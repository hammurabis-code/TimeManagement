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

        public int UserDetailId { get; set; }
        public string UserId { get; set; }

        public string Username { get; set; }

        public string AccountingName { get; set; }
        
        public int DefaultJobEntries { get; set; }

        public List<JobNumber> UsedJobNumbers { get; set; }

        public List<DepartmentView> UserDepartments { get; set; }

        public List<WorkCodeView> UserWorkCodes { get; set; }

        public List<UserRole> UserRoles { get; set; }

        public UserInfoViewModel(string id,string username) {
            UserDetailId = int.MinValue;
            UserId = id;
            Username = username;
            UsedJobNumbers = new List<JobNumber>();
            UserDepartments = new List<DepartmentView>();
            UserWorkCodes = new List<WorkCodeView>();
            UserRoles = new List<UserRole>();
        }

        public Dictionary<string, object> GetProfileUpdateParameters()
        {
            var paramDictionary = new Dictionary<string, object>();
            paramDictionary.Add("p_id", UserDetailId);
            paramDictionary.Add("p_userId", UserId);
            paramDictionary.Add("p_accountingName", AccountingName);
            paramDictionary.Add("p_defaultJobEntries", DefaultJobEntries);
            return paramDictionary;
        }
    }

    public class UserRole {
        public string RoleName { get; set; }
    }

    public class UserLoginInfoViewModel
    {
        public string LoginProvider { get; set; }

        public string ProviderKey { get; set; }
    }
}
