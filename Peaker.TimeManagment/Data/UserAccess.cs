using Peaker.TimeManagment.Models;
using System.Linq;
using Peaker.TimeManagment.Models.View;
using Peaker.TimeManagment.Models.Data;

namespace Peaker.TimeManagment.Data
{
    public static class UserAccess
    {

        public static UserInfoViewModel FillUserInfo(ApplicationUser user)
        {
            var userInfo = new UserInfoViewModel(user.Id,user.Email);
            UserDetail details = null;        
            using (var context = new PeakerContext())
            {
                details = context.UserDetails.FirstOrDefault(u => u.UserId == user.Id);
                if (details == null)
                {
                    details = CreateDetails(user.Id, user.Email, context);
                }

                userInfo.DefaultJobEntries = details.DefaultJobEntries;

                var departments = context.Departments.ToList();
                foreach (var department in departments)
                {
                    userInfo.UserDepartments.Add(new DepartmentView()
                    {
                        Id = department.Id,
                        BaseCode = department.BaseCode,
                        Description = department.Description,
                        IsSelected = details.Departments.Any(d => d.Id == department.Id)
                    });
                }
                var workcodes = context.WorkCodes.ToList();
                foreach (var workcode in workcodes)
                {
                    userInfo.UserWorkCodes.Add(new WorkCodeView()
                    {
                        WorkCodeId = workcode.Id,
                        area = workcode.Area,
                        baseCode = workcode.BaseCode,
                        description = workcode.Description,
                        sub = workcode.Sub,
                        IsSelected = details.WorkCodes.Any(w => w.Id == workcode.Id)
                    });
                }
                userInfo.UsedJobNumbers.AddRange(details.UsedJobNumbers);
            }

            return userInfo;
        }        

        private static UserDetail CreateDetails(string userId, string userName, PeakerContext context)
        {
            UserDetail newDetail = new UserDetail()
            {
                UserId = userId,
                AccountingName = userName,
                DefaultJobEntries = 3
            };
            context.UserDetails.Add(newDetail);
            context.SaveChanges();
            return newDetail;
        }
    }
}