using Peaker.TimeManagment.Models;
using System.Linq;
using Peaker.TimeManagment.Models.View;
using Peaker.TimeManagment.Models.Data;
using System;
using System.Security.Principal;
using Microsoft.AspNet.Identity;
using System.Collections.Generic;
using MySql.Data.MySqlClient;
using System.Data;

namespace Peaker.TimeManagment.Data
{
    public class UserAccess : DataAccess
    {

        public UserInfoViewModel FillUserInfo(ApplicationUser user, ApplicationRoleManager roleManager)
        {
            

            var userDetail = RetrieveSingle(UserDetail.UserDetailFactory, Constants.GetUserDetailProcedure, GetSingleParameter("p_userIdParam", user.Id));
            
            if (userDetail == null)
            {
                userDetail = CreateDetails(user.Id, user.UserName);
            }
            var userInfo = new UserInfoViewModel(user.Id, user.Email, userDetail.IsSecondShift);
            userInfo.AccountingName = userDetail.AccountingName;
            userInfo.DefaultJobEntries = userDetail.DefaultJobEntries;
            userInfo.UserDetailId = userDetail.Id;

            FillWorkCodes(userInfo);
            //FillJobNumbers(userInfo);
            //FillDepartments(userInfo);            
            FillUserRoles(userInfo, user, roleManager);
            
            return userInfo;
        }

        private void FillUserRoles(UserInfoViewModel userinfo,ApplicationUser user, ApplicationRoleManager roleManager)
        {
            foreach (var role in user.Roles) {
                userinfo.UserRoles.Add(new UserRole() { RoleName = roleManager.FindById(role.RoleId).Name });
            }
        }

        //private void FillDepartments(UserInfoViewModel userInfo)
        //{
        //    var allDepartments = Retrieve(Department., Constants.GetAllWorkCodes, new Dictionary<string, object>());

        //    foreach (var department in departments)
        //    {
        //        userInfo.UserDepartments.Add(new DepartmentView()
        //        {
        //            DepartmentId = department.Id,
        //            BaseCode = department.BaseCode,
        //            Description = department.Description,
        //            IsSelected = details.Departments.Any(d => d.Id == department.Id)
        //        });
        //    }
        //}
        
        private void FillJobNumbers(UserInfoViewModel userInfo)
        {
            throw new NotImplementedException();
        }

        private void FillWorkCodes(UserInfoViewModel userInfo)
        {
            var allCodes = Retrieve(WorkCode.WorkCodeFactory, Constants.GetAllWorkCodesProcedure, new Dictionary<string, object>());
            var userCodeIds = Retrieve<int>(Constants.GetUserWorkCodeListProcedure, GetSingleParameter("p_userDetailId", userInfo.UserDetailId));
            foreach (var workcode in allCodes)
            {
                userInfo.UserWorkCodes.Add(new WorkCodeView()
                {
                    workCodeId = workcode.Id,
                    baseCode = workcode.BaseCode,
                    description = workcode.Description,
                    isJobNumberRequired = workcode.IsJobNumberRequired,
                    isSelected = userCodeIds.Any(w => w == workcode.Id)
                });
            }

        }              

        public static bool IsUserAdmin(IPrincipal user)
        {
            return IsUserInRole(user, "Admin");
        }

        private static bool IsUserInRole(IPrincipal user, string roleName)
        {
            return user.IsInRole(roleName);
        }

        private UserDetail CreateDetails(string userId, string userName)
        {
            var paramDictionary = new Dictionary<string, object>();
            paramDictionary.Add("p_userId", userId);
            paramDictionary.Add("p_accountingName", userName);
            paramDictionary.Add("p_defaultJobEntries", 3);
            ExecuteNonQuery(Constants.InsertUserDetailProcedure, paramDictionary);
            paramDictionary.Clear();
            paramDictionary.Add("p_userId", userId);
            return RetrieveSingle(UserDetail.UserDetailFactory, Constants.GetUserDetailProcedure, paramDictionary);
            
        }

        public List<UserListItem> GetAllUsers() {
            string query = @"SELECT U.Email, UD.AccountingName, UD.Id AS UserDetailId
                            FROM AspNetUsers U 
                            INNER JOIN userdetail UD ON U.Id = UD.UserId 
                            WHERE UD.Id <> -1
                            ORDER BY UD.AccountingName;";
            return Retrieve(UserListItem.UserListItemFactory, query, null, false).ToList();
        }

        public void UpdateUserInfo(UserInfoViewModel userInfo)
        {
            var detail = Retrieve(UserDetail.UserDetailFactory, Constants.GetUserDetailProcedure, GetSingleParameter("p_userIdParam", userInfo.UserDetailId));
            if (detail != null)
            {

                ExecuteNonQuery(Constants.UpdateUserDetailProcedure, userInfo.GetProfileUpdateParameters());

                var userWorkCodeParams = new Dictionary<string, object>();
                foreach (var workCode in userInfo.UserWorkCodes)
                {
                    var workcodeParamDictionary = new Dictionary<string, object>();
                    workcodeParamDictionary.Add("p_workCodeId", workCode.workCodeId);

                    var userCodeIds = Retrieve<int>(Constants.GetUserWorkCodeListProcedure, GetSingleParameter("p_userDetailId", userInfo.UserDetailId));
                    var targetWorkCode = RetrieveSingle(WorkCode.WorkCodeFactory, Constants.GetTargetWorkCodeProcedure, workcodeParamDictionary);// context.WorkCodes.FirstOrDefault(d => d.Id == workCode.WorkCodeId);
                    if (workCode.isSelected)
                    {
                        if (!userCodeIds.Contains(targetWorkCode.Id))
                        {
                            userWorkCodeParams.Clear();
                            userWorkCodeParams.Add("p_userDetailId", userInfo.UserDetailId);
                            userWorkCodeParams.Add("p_workCodeId", targetWorkCode.Id);
                            ExecuteNonQuery(Constants.InsertUserWorkCodeProcedure, userWorkCodeParams);
                            //details.WorkCodes.Add(targetWorkCode);
                        }
                    }
                    else
                    {
                        if (userCodeIds.Contains(targetWorkCode.Id))
                        {
                            userWorkCodeParams.Clear();
                            userWorkCodeParams.Add("p_userDetailId", userInfo.UserDetailId);
                            userWorkCodeParams.Add("p_workCodeId", targetWorkCode.Id);
                            ExecuteNonQuery(Constants.DeleteUserWorkCodeProcedure, userWorkCodeParams);
                        }
                    }
                }
            }
            else
            {
                throw new ArgumentException("User detail not found.");
            }
        }
    }
}