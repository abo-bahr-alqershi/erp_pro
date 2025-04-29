using System;

namespace ERP_Pro.Accounting.Domain.OpenBalance.Exceptions
{
    /// <summary>
    /// يُرمى عند محاولة إجراء عملية على رصيد مفتوح مع وجود عدم تطابق في معلومات الفرع.
    /// </summary>
    /// <remarks>   
    ///     يُستخدم هذا الاستثناء للإشارة إلى أن الرصيد المفتوح غير موجود في النظام أو أنه لا يمكن الوصول إليه.  
    /// </remarks>
    public class OpenBalanceBranchMismatchException : Exception
    {
        public OpenBalanceBranchMismatchException(string? message = null)
            : base(message ?? "Branch information mismatch for open balance.") { }
    }
}
