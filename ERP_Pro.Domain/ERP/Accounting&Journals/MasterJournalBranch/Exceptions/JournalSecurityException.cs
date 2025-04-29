using System;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Exceptions
{
    /// <summary>
    /// يُرمى عند محاولة تنفيذ عملية من طرف مستخدم غير مصرح له.
    /// </summary>
    public class JournalSecurityException : Exception
    {
        public JournalSecurityException()
            : base("Security violation detected for journal entry operation.") { }
    }
}
