using System;
using ERP.Domain.Common;

namespace ERP.Domain.Accounting.Exceptions
{
    /// <summary>
    /// يُطلق عند محاولة إنشاء رأس قيد محاسبي مكرر (نفس النوع والرقم موجود سابقًا).
    /// Thrown when trying to create a duplicate MasterJournal entry.
    /// </summary>
    public class DuplicateJournalException : ExceptionBase
    {
        public DuplicateJournalException(string message) : base(message) { }
    }
}