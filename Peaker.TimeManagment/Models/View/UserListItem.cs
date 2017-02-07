using System.Collections.Generic;
using System.Data;

namespace Peaker.TimeManagment.Models.View
{
    public class UserListItem
    {
        public string AccountingName { get; set; }
        public string Email { get; set; }
        public int UserDetailId { get; set; }

        public static UserListItem UserListItemFactory(IDataRecord record)
        {
            return new UserListItem
            {                           
                AccountingName = record.GetString(record.GetOrdinal("AccountingName")),
                Email = record.GetString(record.GetOrdinal("Email")),
                UserDetailId = record.GetInt32(record.GetOrdinal("UserDetailId")),
            };
        }
    }
}