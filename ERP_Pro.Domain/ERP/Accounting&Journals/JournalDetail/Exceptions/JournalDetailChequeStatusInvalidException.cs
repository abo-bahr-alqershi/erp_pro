using System;
using Domain.Common;

namespace Accounting.Domain.Journals.Exceptions
{
    /// <summary>
    /// استثناء عند وجود حالة غير مناسبة للشيك
    /// </summary>
    public class JournalDetailChequeStatusInvalidException : DomainException
    {
        public JournalDetailChequeStatusInvalidException(string message) : base(message) { }
    }
}