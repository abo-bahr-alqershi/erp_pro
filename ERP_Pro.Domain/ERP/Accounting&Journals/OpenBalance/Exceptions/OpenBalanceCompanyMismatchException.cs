using System;

namespace ERP_Pro.Accounting.Domain.OpenBalance.Exceptions
{
    public class OpenBalanceCompanyMismatchException : Exception
    {
        public OpenBalanceCompanyMismatchException(string? message = null)
            : base(message ?? "Company information mismatch for open balance.") { }
    }
}
