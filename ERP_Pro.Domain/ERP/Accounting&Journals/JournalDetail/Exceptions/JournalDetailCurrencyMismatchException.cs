using System;
using Domain.Common;

namespace Accounting.Domain.Journals.Exceptions
{
    /// <summary>
    /// استثناء عند وجود تعارض في العملة
    /// </summary>
    public class JournalDetailCurrencyMismatchException : DomainException
    {
        public JournalDetailCurrencyMismatchException(string message) : base(message) { }
    }
}