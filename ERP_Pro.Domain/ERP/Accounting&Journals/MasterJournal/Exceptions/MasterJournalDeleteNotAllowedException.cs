using System;
using ERP.Domain.Common;

namespace ERP.Domain.Accounting.Exceptions
{
    /// <summary>
    /// يُطلق عند محاولة حذف قيد محاسبي يمنع حذفه بسبب سياسات النظام أو علاقاته.
    /// Thrown when deleting a MasterJournal is disallowed due to business rules or relations.
    /// </summary>
    public class MasterJournalDeleteNotAllowedException : ExceptionBase
    {
        public MasterJournalDeleteNotAllowedException(string message) : base(message) { }
    }
}