using System;
using Domain.Common;

namespace Accounting.Domain.Journals.Exceptions
{
    /// <summary>
    /// استثناء عند محاولة التعديل أو الحذف لسطر غير موجود
    /// </summary>
    public class JournalDetailNotFoundException : DomainException
    {
        public JournalDetailNotFoundException(string message) : base(message) { }
    }
}