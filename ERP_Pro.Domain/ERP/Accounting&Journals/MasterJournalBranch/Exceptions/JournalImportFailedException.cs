using System;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Exceptions
{
    /// <summary>
    /// يُرمى عند فشل استيراد القيد.
    /// </summary>
    public class JournalImportFailedException : Exception
    {
        public JournalImportFailedException()
            : base("Failed to import the journal entry.") { }
    }
}
