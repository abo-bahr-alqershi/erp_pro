using System;
using Domain.Common;

namespace Accounting.Domain.Journals.Exceptions
{
    /// <summary>
    /// استثناء عند وجود قيود تمنع حذف تفاصيل القيد اليومي
    /// </summary>
    public class ForbiddenJournalDetailDeleteException : DomainException
    {
        public ForbiddenJournalDetailDeleteException(string message) : base(message) { }
    }
}