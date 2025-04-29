using System;
using Domain.Common;

namespace Accounting.Domain.Journals.Exceptions
{
    /// <summary>
    /// استثناء عند التعامل مع حساب غير نشط
    /// </summary>
    public class JournalDetailAccountInactiveException : DomainException
    {
        public JournalDetailAccountInactiveException(string message) : base(message) { }
    }
}