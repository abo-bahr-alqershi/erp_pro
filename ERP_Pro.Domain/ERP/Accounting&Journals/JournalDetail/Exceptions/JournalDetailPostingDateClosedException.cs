using System;
using Domain.Common;

namespace Accounting.Domain.Journals.Exceptions
{
    /// <summary>
    /// استثناء عند محاولة إضافة أو تعديل على فترة مغلقة
    /// </summary>
    public class JournalDetailPostingDateClosedException : DomainException
    {
        public JournalDetailPostingDateClosedException(string message) : base(message) { }
    }
}