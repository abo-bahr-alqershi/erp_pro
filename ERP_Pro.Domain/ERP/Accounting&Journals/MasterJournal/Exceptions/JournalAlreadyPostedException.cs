using System;
using ERP.Domain.Common;

namespace ERP.Domain.Accounting.Exceptions
{
    /// <summary>
    /// يُطلق عند محاولة تعديل أو حذف قيد تم ترحيله بالفعل.
    /// Thrown when trying to modify or delete a MasterJournal that is already posted.
    /// </summary>
    public class JournalAlreadyPostedException : ExceptionBase
    {
        public JournalAlreadyPostedException(string message) : base(message) { }
    }
}