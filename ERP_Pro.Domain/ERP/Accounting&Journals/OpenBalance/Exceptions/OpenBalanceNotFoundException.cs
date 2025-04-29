using System;

namespace ERP_Pro.Accounting.Domain.OpenBalance.Exceptions
{
    /// <summary>
    /// يُرمى عند محاولة أرشفة رصيد مفتوح غير مسموح بأرشفته.
    /// </summary>
    /// <remarks>
    /// يُستخدم هذا الاستثناء للإشارة إلى أن الرصيد المفتوح غير موجود في النظام أو أنه لا يمكن الوصول إليه.
    /// </remarks>
    /// <example>
    /// <code>
    /// if (!openBalanceExists)
    /// {
    ///     throw new OpenBalanceNotFoundException("The specified open balance does not exist.");       
    ///         
    public class OpenBalanceNotFoundException : Exception
    {
        public OpenBalanceNotFoundException(string? message = null)
            : base(message ?? "Open balance not found.") { }
    }
}
