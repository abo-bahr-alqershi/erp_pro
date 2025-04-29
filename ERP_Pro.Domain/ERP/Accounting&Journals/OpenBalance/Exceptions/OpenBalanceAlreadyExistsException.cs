using System;

namespace ERP_Pro.Accounting.Domain.OpenBalance.Exceptions
{
    public class OpenBalanceAlreadyExistsException : Exception
    {
        public OpenBalanceAlreadyExistsException(string? message = null)
            : base(message ?? "Open balance already exists for this account/branch/year.") { }
    }
}
