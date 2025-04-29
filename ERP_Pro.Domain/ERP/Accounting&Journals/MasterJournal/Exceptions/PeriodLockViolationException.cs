using System;
using ERP.Domain.Common;

namespace ERP.Domain.Accounting.Exceptions
{
    /// <summary>
    /// يُطلق عند محاولة تعديل أو حذف قيد ضمن فترة مغلقة محاسبيًا.
    /// Thrown when operation on a closed period is attempted.
    /// </summary>
    public class PeriodLockViolationException : ExceptionBase
    {
        public PeriodLockViolationException(string message) : base(message) { }
    }
}