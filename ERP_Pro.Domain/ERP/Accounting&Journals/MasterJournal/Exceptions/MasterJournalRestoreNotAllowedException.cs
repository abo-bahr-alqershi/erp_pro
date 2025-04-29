using System;
using ERP.Domain.Common;

namespace ERP.Domain.Accounting.Exceptions
{
    /// <summary>
    /// يُطلق عند محاولة استرجاع قيد لا تسمح السياسات أو الحالة العملية بذلك.
    /// Thrown when restoring a MasterJournal is not allowed by policy or state.
    /// </summary>
    public class MasterJournalRestoreNotAllowedException : ExceptionBase
    {
        public MasterJournalRestoreNotAllowedException(string message) : base(message) { }
    }
}