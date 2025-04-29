using System;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Exceptions
{
    /// <summary>
    /// يُرمى عند محاولة تنفيذ عملية غير منطقية حسب حالة القيد.
    /// </summary>
    public class InvalidJournalStateException : Exception
    {
        public InvalidJournalStateException()
            : base("Invalid operation for the current journal entry state.") { }
    }
}
