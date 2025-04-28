using System;
using Domain.Common;

namespace Accounting.Domain.Journals.Exceptions
{
    /// <summary>
    /// استثناء عند محاولة حذف أو تعديل تفاصيل قيد مرتبطة بكيانات أخرى
    /// </summary>
    public class JournalDetailInUseException : DomainException
    {
        public JournalDetailInUseException(string message) : base(message) { }
    }
}