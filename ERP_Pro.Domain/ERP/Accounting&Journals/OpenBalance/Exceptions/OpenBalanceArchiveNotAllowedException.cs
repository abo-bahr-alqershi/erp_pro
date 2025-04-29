using System;

namespace ERP_Pro.Accounting.Domain.OpenBalance.Exceptions
{
    /// <summary>
    /// يُرمى عند محاولة أرشفة رصيد مفتوح غير مسموح بأرشفته.
    /// </summary>
    /// <remarks>
    /// يُستخدم هذا الاستثناء للإشارة إلى أن الرصيد المفتوح غير موجود في النظام أو أنه لا يمكن الوصول إليه.
    /// </remarks>
    public class OpenBalanceArchiveNotAllowedException : Exception
    {
        public OpenBalanceArchiveNotAllowedException(string? message = null)
            : base(message ?? "Archiving open balance is not allowed.") { }
    }
}
