using System;

namespace Peaker.TimeManagment.Models.Exceptions
{
    [Serializable]
    public class UnauthorizedFilter : Exception
    {
        public UnauthorizedFilter() { }

        public UnauthorizedFilter(string message) : base(message) {
            
        }

        public UnauthorizedFilter(string message, Exception innerException) : base(message, innerException)
        {

        }
    }
}