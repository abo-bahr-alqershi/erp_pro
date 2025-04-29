using System;
using Domain.Common;

namespace Accounting.Domain.Journals.Exceptions
{
    /// <summary>
    /// استثناء عند غياب رقم المشروع المطلوب
    /// </summary>
    public class JournalDetailProjectRequiredException : DomainException
    {
        public JournalDetailProjectRequiredException(string message) : base(message) { }
    }
}