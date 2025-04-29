using System;

namespace ERP_Pro.Accounting.Domain.OpenBalance.Exceptions
{
    /// <summary>
    /// يُرمى عند محاولة أرشفة رصيد مفتوح غير مسموح بأرشفته.
    /// </summary>
    public class OpenBalanceComplianceViolationException : Exception
    {
        public OpenBalanceComplianceViolationException(string? message = null)
            : base(message ?? "Compliance violation detected for open balance.") { }
    }
}
