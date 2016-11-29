using System.Collections.Generic;

namespace Peaker.TimeManagment.Models.View
{
    public class ProfileView
    {
        public string UserName { get; set; }
        public string AccountingName { get; set; }
        public List<DepartmentView> Departments { get; set; }
        public int DefaultEntries { get; set; }
        public List<WorkCodeView> WorkCodes { get; set; }

        public ProfileView(string userName, int defaultEntries) {
            UserName = userName;
            AccountingName = userName;
            DefaultEntries = defaultEntries;
            Departments = new List<DepartmentView>();
            WorkCodes = new List<WorkCodeView>();
        }
}
}