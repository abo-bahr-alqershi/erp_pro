using System;

namespace ERP_Pro.Accounting.Domain.OpenBalance.Exceptions
{
    public class OpenBalancePermissionDeniedException : Exception
    {
        public OpenBalancePermissionDeniedException(string? message = null)
            : base(message ?? "Permission denied for open balance operation.") { }
    }
}
