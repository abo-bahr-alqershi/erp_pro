using System;
using Domain.Common;

namespace Accounting.Domain.Journals.Exceptions
{
    /// <summary>
    /// استثناء عند محاولة حذف تفاصيل قيد وله أبناء أو ارتباطات
    /// </summary>
    public class JournalDetailDeleteWithChildrenException : DomainException
    {
        public JournalDetailDeleteWithChildrenException(string message) : base(message) { }
    }
}