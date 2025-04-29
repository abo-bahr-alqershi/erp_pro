using System;
using Domain.Common;

namespace Accounting.Domain.Journals.Exceptions
{
    /// <summary>
    /// استثناء عند الحاجة لاعتماد السطر قبل الترحيل
    /// </summary>
    public class JournalDetailApprovalRequiredException : DomainException
    {
        public JournalDetailApprovalRequiredException(string message) : base(message) { }
    }
}