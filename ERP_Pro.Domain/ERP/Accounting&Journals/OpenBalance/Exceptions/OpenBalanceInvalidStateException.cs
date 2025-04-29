using System;

namespace ERP_Pro.Accounting.Domain.OpenBalance.Exceptions
{
    /// <summary>
    /// يُرمى عند محاولة أرشفة رصيد مفتوح غير مسموح بأرشفته.
    /// </summary>
    public class OpenBalanceInvalidStateException : Exception
    {
        public OpenBalanceInvalidStateException(string? message = null)
            : base(message ?? "Invalid state for open balance operation.") { }
    }
}
