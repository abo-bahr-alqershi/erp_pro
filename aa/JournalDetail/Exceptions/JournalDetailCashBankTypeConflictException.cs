using System;
using Domain.Common;

namespace Accounting.Domain.Journals.Exceptions
{
    /// <summary>
    /// استثناء عند وجود تعارض في نوع الصندوق أو البنك
    /// </summary>
    public class JournalDetailCashBankTypeConflictException : DomainException
    {
        public JournalDetailCashBankTypeConflictException(string message) : base(message) { }
    }
}