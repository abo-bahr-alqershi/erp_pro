using System;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Exceptions
{
    /// <summary>
    /// يُرمى عند محاولة تعديل أو حذف قيد تم ترحيله بالفعل.
    /// </summary>
    public class JournalAlreadyPostedException : Exception
    {
        public JournalAlreadyPostedException()
            : base("Cannot modify or delete a posted journal entry.") { }
    }
}
