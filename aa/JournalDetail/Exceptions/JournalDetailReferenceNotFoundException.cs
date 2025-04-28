using System;
using Domain.Common;

namespace Accounting.Domain.Journals.Exceptions
{
    /// <summary>
    /// استثناء عند عدم وجود المستند المرجعي
    /// </summary>
    public class JournalDetailReferenceNotFoundException : DomainException
    {
        public JournalDetailReferenceNotFoundException(string message) : base(message) { }
    }
}