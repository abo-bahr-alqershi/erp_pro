using System;
using Domain.Common;

namespace Accounting.Domain.Journals.Exceptions
{
    /// <summary>
    /// استثناء عند محاولة إضافة تفاصيل قيد يومي مكررة
    /// </summary>
    public class JournalDetailAlreadyExistsException : DomainException
    {
        public JournalDetailAlreadyExistsException(string message) : base(message) { }
    }
}