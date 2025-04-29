using System;
using Domain.Common;

namespace Accounting.Domain.Journals.Exceptions
{
    /// <summary>
    /// استثناء عند وجود خطأ في احتساب الضريبة
    /// </summary>
    public class JournalDetailTaxCalculationException : DomainException
    {
        public JournalDetailTaxCalculationException(string message) : base(message) { }
    }
}