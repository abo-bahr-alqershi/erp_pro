using System;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Exceptions
{
    /// <summary>
    /// يُرمى عند وجود تعارض بين بيانات الشركة في القيد والعملية.
    /// </summary>
    public class JournalCompanyMismatchException : Exception
    {
        public JournalCompanyMismatchException()
            : base("Company information mismatch for the journal entry.") { }
    }
}
