using System;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Exceptions
{
    /// <summary>
    /// يُرمى عند وجود تعارض بين بيانات الفرع في القيد والعملية.
    /// </summary>
    public class JournalBranchMismatchException : Exception
    {
        public JournalBranchMismatchException()
            : base("Branch information mismatch for the journal entry.") { }
    }
}
