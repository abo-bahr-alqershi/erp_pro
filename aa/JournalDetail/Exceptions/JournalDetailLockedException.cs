using System;
using Domain.Common;

namespace Accounting.Domain.Journals.Exceptions
{
    /// <summary>
    /// استثناء عند محاولة التعديل أو الحذف لسطر مقفل
    /// </summary>
    public class JournalDetailLockedException : DomainException
    {
        public JournalDetailLockedException(string message) : base(message) { }
    }
}