using System;
using Domain.Common;

namespace Accounting.Domain.Journals.Exceptions
{
    /// <summary>
    /// استثناء عند تكرار الرقم التسلسلي لنفس القيد
    /// </summary>
    public class JournalDetailDuplicatedSerialException : DomainException
    {
        public JournalDetailDuplicatedSerialException(string message) : base(message) { }
    }
}