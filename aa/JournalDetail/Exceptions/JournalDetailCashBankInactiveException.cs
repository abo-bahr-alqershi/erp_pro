using System;
using Domain.Common;

namespace Accounting.Domain.Journals.Exceptions
{
    /// <summary>
    /// استثناء عند محاولة التعامل مع صندوق أو بنك غير نشط
    /// </summary>
    public class JournalDetailCashBankInactiveException : DomainException
    {
        public JournalDetailCashBankInactiveException(string message) : base(message) { }
    }
}