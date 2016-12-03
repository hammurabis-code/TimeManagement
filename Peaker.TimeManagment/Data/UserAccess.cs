using Peaker.TimeManagment.Models;
using System.Linq;
using Peaker.TimeManagment.Models.View;
using Peaker.TimeManagment.Models.Data;
using System;

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
                details = context.UserDetails
                    .Include(nameof(UserDetail.Departments))
                    .Include(nameof(UserDetail.WorkCodes))
                    .Include(nameof(UserDetail.UsedJobNumbers))
                    .FirstOrDefault(u => u.UserId == user.Id);
                if (details == null)
                {
                    details = CreateDetails(user.Id, user.Email, context);
                }
                userInfo.AccountingName = details.AccountingName;
                userInfo.DefaultJobEntries = details.DefaultJobEntries;

                var departments = context.Departments.ToList();
                foreach (var department in departments)
                {
                    userInfo.UserDepartments.Add(new DepartmentView()
                    {
                        DepartmentId = department.Id,
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
                        IsJobNumberRequired = workcode.IsJobNumberRequired,
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

        public static bool UpdateUserInfo(UserInfoViewModel userInfo)
        {
            using (var context = new PeakerContext())
            {
                var details = context.UserDetails
                    .Include(nameof(UserDetail.Departments))
                    .Include(nameof(UserDetail.WorkCodes))
                    .Include(nameof(UserDetail.UsedJobNumbers))
                    .FirstOrDefault(u => u.UserId == userInfo.UserId);
                if (details != null)
                {
                    details.DefaultJobEntries = userInfo.DefaultJobEntries;
                    details.AccountingName = userInfo.AccountingName;
                }
                else {
                    throw new ArgumentException("Detail not found.");
                }

                foreach (var department in userInfo.UserDepartments)
                {
                    var targetDepartment = context.Departments.FirstOrDefault(d => d.Id == department.DepartmentId);
                    if (department.IsSelected)
                    {
                        if (!details.Departments.Contains(targetDepartment))
                        {
                            details.Departments.Add(targetDepartment);
                        }
                    }
                    else {
                        if (details.Departments.Contains(targetDepartment))
                        {
                            details.Departments.Remove(targetDepartment);
                        }
                    }
                }

                foreach (var workCode in userInfo.UserWorkCodes)
                {
                    var targetWorkCode = context.WorkCodes.FirstOrDefault(d => d.Id == workCode.WorkCodeId);
                    if (workCode.IsSelected)
                    {
                        if (!details.WorkCodes.Contains(targetWorkCode))
                        {
                            details.WorkCodes.Add(targetWorkCode);
                        }
                    }
                    else
                    {
                        if (details.WorkCodes.Contains(targetWorkCode))
                        {
                            details.WorkCodes.Remove(targetWorkCode);
                        }
                    }
                }
                context.SaveChanges();
                return true;                          
            }
        }
    }
}