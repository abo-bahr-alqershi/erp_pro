using System;
using Domain.Common;

namespace Accounting.Domain.Journals.Exceptions
{
    /// <summary>
    /// استثناء عند فشل تحديث الأقساط المرتبطة بالسطر
    /// </summary>
    public class JournalDetailInstallmentConflictException : DomainException
    {
        public JournalDetailInstallmentConflictException(string message) : base(message) { }
    }
}