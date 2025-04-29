using System;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Exceptions
{
    /// <summary>
    /// يُرمى عند محاولة عكس قيد غير قابل للعكس.
    /// </summary>
    public class JournalReverseNotAllowedException : Exception
    {
        public JournalReverseNotAllowedException()
            : base("Reversing this journal entry is not allowed.") { }
    }
}
