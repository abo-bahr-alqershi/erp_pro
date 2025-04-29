using System;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Exceptions
{
    /// <summary>
    /// يُرمى عند محاولة تنفيذ عملية تتطلب اعتماد القيد أولاً.
    /// </summary>
    public class JournalApprovalRequiredException : Exception
    {
        public JournalApprovalRequiredException()
            : base("Journal entry approval is required for this operation.") { }
    }
}
