using System;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Exceptions
{
    /// <summary>
    /// يُرمى عند محاولة مستخدم تنفيذ عملية بدون صلاحية كافية.
    /// </summary>
    public class JournalUserPermissionDeniedException : Exception
    {
        public JournalUserPermissionDeniedException()
            : base("User does not have permission to perform this operation on the journal entry.") { }
    }
}
