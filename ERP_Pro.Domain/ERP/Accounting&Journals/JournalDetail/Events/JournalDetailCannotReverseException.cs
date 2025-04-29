using System;
using Domain.Common;

namespace Accounting.Domain.Journals.Exceptions
{
    /// <summary>
    /// استثناء عند محاولة عكس سطر لا يسمح بعكسه
    /// </summary>
    public class JournalDetailCannotReverseException : DomainException
    {
        public JournalDetailCannotReverseException(string message) : base(message) { }
    }
}