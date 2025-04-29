using System;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Exceptions
{
    /// <summary>
    /// يُرمى عند محاولة استعادة قيد غير مسموح باستعادته.
    /// </summary>
    public class JournalRestoreNotAllowedException : Exception
    {
        public JournalRestoreNotAllowedException()
            : base("Restoring this journal entry is not allowed.") { }
    }
}
