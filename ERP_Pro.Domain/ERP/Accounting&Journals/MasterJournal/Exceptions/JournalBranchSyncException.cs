using System;
using ERP.Domain.Common;

namespace ERP.Domain.Accounting.Exceptions
{
    /// <summary>
    /// يُطلق عند فشل مزامنة بيانات الفروع المرتبطة بالقيد.
    /// Thrown when syncing branch data related to the MasterJournal fails.
    /// </summary>
    public class JournalBranchSyncException : ExceptionBase
    {
        public JournalBranchSyncException(string message) : base(message) { }
    }
}