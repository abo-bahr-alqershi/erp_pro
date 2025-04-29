using System;
using Domain.Common;

namespace Accounting.Domain.Journals.Exceptions
{
    /// <summary>
    /// استثناء عند تجاوز المبلغ للحدود المسموح بها
    /// </summary>
    public class JournalDetailAmountOutOfRangeException : DomainException
    {
        public JournalDetailAmountOutOfRangeException(string message) : base(message) { }
    }
}