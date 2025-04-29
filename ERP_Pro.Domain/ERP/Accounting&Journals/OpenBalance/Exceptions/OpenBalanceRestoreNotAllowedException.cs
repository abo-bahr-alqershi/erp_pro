using System;

namespace ERP_Pro.Accounting.Domain.OpenBalance.Exceptions
{
    public class OpenBalanceRestoreNotAllowedException : Exception
    {
        public OpenBalanceRestoreNotAllowedException(string? message = null)
            : base(message ?? "Restoring open balance is not allowed.") { }
    }
}
