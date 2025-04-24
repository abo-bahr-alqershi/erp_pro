using System;

namespace ERP_Pro.Domain.Accounts.Exceptions
{
    public class InvalidAccountTypeException : Exception
    {
        public InvalidAccountTypeException(string type)
            : base($"Invalid account type: {type}") { }
    }
}