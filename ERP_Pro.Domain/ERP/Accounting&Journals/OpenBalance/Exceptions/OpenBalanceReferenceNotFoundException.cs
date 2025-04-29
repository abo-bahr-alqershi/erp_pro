using System;

namespace ERP_Pro.Accounting.Domain.OpenBalance.Exceptions
{
    public class OpenBalanceReferenceNotFoundException : Exception
    {
        public OpenBalanceReferenceNotFoundException(string? message = null)
            : base(message ?? "Reference not found for open balance.") { }
    }
}
