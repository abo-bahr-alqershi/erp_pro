using System;
using ERP.Domain.Common;

namespace ERP.Domain.Accounting.Exceptions
{
    /// <summary>
    /// يُطلق عند فشل مزامنة تفاصيل القيد مع رأس القيد.
    /// Thrown when syncing journal details with the master fails.
    /// </summary>
    public class JournalDetailSyncException : ExceptionBase
    {
        public JournalDetailSyncException(string message) : base(message) { }
    }
}