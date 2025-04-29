using System;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Exceptions
{
    /// <summary>
    /// يُرمى عند محاولة تعديل قيد أثناء أو بعد التدقيق.
    /// </summary>
    public class JournalAuditViolationException : Exception
    {
        public JournalAuditViolationException()
            : base("Cannot modify a journal entry that is under audit or already audited.") { }
    }
}
