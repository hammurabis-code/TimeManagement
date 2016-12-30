using System;

namespace Peaker.TimeManagment.Models.Exceptions
{
    [Serializable]
    public class UserDetailNotFoundException : Exception
    {
        public UserDetailNotFoundException() { }

        public UserDetailNotFoundException(string message) : base(message) {
            
        }

        public UserDetailNotFoundException(string message, Exception innerException) : base(message, innerException)
        {

        }
    }
}