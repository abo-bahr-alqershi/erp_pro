using System;

namespace ERP_Pro.Accounting.Domain.OpenBalance.Exceptions
{
    /// <summary>
    /// يُرمى عند محاولة أرشفة رصيد مفتوح غير مسموح بأرشفته.
    /// </summary>
    /// <remarks>
    /// يُستخدم هذا الاستثناء للإشارة إلى أن الرصيد المفتوح غير موجود في النظام أو أنه لا يمكن الوصول إليه.
    /// </remarks>
    public class OpenBalanceUnpostingNotAllowedException : Exception
    {
        public OpenBalanceUnpostingNotAllowedException(string? message = null)
            : base(message ?? "Unposting open balance is not allowed.") { }
    }
}
