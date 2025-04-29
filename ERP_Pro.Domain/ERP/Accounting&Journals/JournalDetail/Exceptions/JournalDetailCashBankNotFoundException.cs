using System;
using Domain.Common;

namespace Accounting.Domain.Journals.Exceptions
{
    /// <summary>
    /// استثناء عند عدم وجود الصندوق أو البنك
    /// </summary>
    public class JournalDetailCashBankNotFoundException : DomainException
    {
        public JournalDetailCashBankNotFoundException(string message) : base(message) { }
    }
}