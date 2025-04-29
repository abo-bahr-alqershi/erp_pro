using System;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Exceptions
{
    /// <summary>
    /// يُرمى عند فشل تصدير القيد.
    /// </summary>
    public class JournalExportFailedException : Exception
    {
        public JournalExportFailedException()
            : base("Failed to export the journal entry.") { }
    }
}
