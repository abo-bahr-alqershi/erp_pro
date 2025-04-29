using System;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Exceptions
{
    /// <summary>
    /// يُرمى عند محاولة تعديل قيد مقفل.
    /// </summary>
    public class JournalLockedException : Exception
    {
        public JournalLockedException()
            : base("Journal entry is locked and cannot be modified.") { }
    }
}
