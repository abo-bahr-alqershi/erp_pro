using System;

namespace ERP_Pro.Accounting.Domain.OpenBalance.Exceptions
{
    public class OpenBalancePostingNotAllowedException : Exception
    {
        public OpenBalancePostingNotAllowedException(string? message = null)
            : base(message ?? "Posting open balance is not allowed.") { }
    }
}
