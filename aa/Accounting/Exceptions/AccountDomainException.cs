using System;

namespace ERP_Pro.Domain.Accounting.Exceptions
{
    public class AccountDomainException : Exception
    {
        public AccountDomainException(string message) : base(message) { }
    }
}