using System;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Exceptions
{
    /// <summary>
    /// يُرمى عند محاولة الوصول إلى مرفق غير موجود في القيد.
    /// </summary>
    public class JournalAttachmentMissingException : Exception
    {
        public JournalAttachmentMissingException()
            : base("Attachment not found for the journal entry.") { }
    }
}
