using System;
using ERP.Domain.Common;

namespace ERP.Domain.Accounting.Exceptions
{
    /// <summary>
    /// يُطلق عند محاولة تعديل أو إضافة أو حذف قيد في فترة مالية مغلقة.
    /// Thrown when trying to operate on a journal in a closed accounting period.
    /// </summary>
    public class JournalPeriodClosedException : ExceptionBase
    {
        public JournalPeriodClosedException(string message) : base(message) { }
    }
}