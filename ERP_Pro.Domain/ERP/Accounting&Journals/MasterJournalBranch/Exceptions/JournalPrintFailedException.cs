using System;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Exceptions
{
    /// <summary>
    /// يُرمى عند فشل طباعة القيد.
    /// </summary>
    public class JournalPrintFailedException : Exception
    {
        public JournalPrintFailedException()
            : base("Failed to print the journal entry.") { }
    }
}
