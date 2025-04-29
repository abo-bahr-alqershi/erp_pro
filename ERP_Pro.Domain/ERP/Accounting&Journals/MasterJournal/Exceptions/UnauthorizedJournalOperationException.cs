using System;
using ERP.Domain.Common;

namespace ERP.Domain.Accounting.Exceptions
{
    /// <summary>
    /// يُطلق عند محاولة المستخدم تنفيذ عملية غير مصرح بها على رأس القيد.
    /// Thrown when a user attempts an unauthorized operation on a MasterJournal.
    /// </summary>
    public class UnauthorizedJournalOperationException : ExceptionBase
    {
        public UnauthorizedJournalOperationException(string message) : base(message) { }
    }
}