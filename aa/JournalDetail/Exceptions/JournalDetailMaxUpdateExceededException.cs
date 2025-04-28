using System;
using Domain.Common;

namespace Accounting.Domain.Journals.Exceptions
{
    /// <summary>
    /// استثناء عند تجاوز الحد الأقصى للتعديلات المسموح بها
    /// </summary>
    public class JournalDetailMaxUpdateExceededException : DomainException
    {
        public JournalDetailMaxUpdateExceededException(string message) : base(message) { }
    }
}