using System;

namespace ERP_Pro.Domain.Users.Exceptions
{
    public class InvalidUserStatusException : Exception
    {
        public InvalidUserStatusException(string status)
            : base($"Invalid user status: {status}") { }
    }
}