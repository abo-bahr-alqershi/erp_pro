using System;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Exceptions
{
    /// <summary>
    /// يُرمى عند محاولة أرشفة قيد غير مسموح بأرشفته.
    /// </summary>
    public class JournalArchiveNotAllowedException : Exception
    {
        public JournalArchiveNotAllowedException()
            : base("Archiving this journal entry is not allowed.") { }
    }
}
