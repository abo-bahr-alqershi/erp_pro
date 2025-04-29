using System;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Exceptions
{
    /// <summary>
    /// يُرمى عند محاولة إنشاء قيد برقم مستند أو نوع مكرر لنفس الفرع والسنة.
    /// </summary>
    public class DuplicateJournalException : Exception
    {
        public DuplicateJournalException()
            : base("Duplicate journal entry detected for the same branch and year.") { }
    }
}
