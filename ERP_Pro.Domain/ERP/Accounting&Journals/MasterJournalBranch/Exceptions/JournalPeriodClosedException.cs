using System;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Exceptions
{
    /// <summary>
    /// يُرمى عند محاولة تنفيذ عملية على قيد في فترة مالية مغلقة.
    /// </summary>
    public class JournalPeriodClosedException : Exception
    {
        public JournalPeriodClosedException()
            : base("Operation not allowed: the accounting period is closed.") { }
    }
}
