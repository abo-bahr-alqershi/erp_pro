using System;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Exceptions
{
    /// <summary>
    /// يُرمى عند محاولة الوصول إلى قيد غير موجود.
    /// </summary>
    public class JournalNotFoundException : Exception
    {
        public JournalNotFoundException()
            : base("Journal entry not found.") { }
    }
}
