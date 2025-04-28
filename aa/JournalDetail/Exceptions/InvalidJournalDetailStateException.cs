using System;
using Domain.Common;

namespace Accounting.Domain.Journals.Exceptions
{
    /// <summary>
    /// استثناء عند وجود حالة غير صحيحة لتفاصيل القيد اليومي
    /// </summary>
    public class InvalidJournalDetailStateException : DomainException
    {
        public InvalidJournalDetailStateException(string message) : base(message) { }
    }
}