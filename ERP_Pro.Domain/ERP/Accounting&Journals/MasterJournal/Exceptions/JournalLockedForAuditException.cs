using System;
using ERP.Domain.Common;

namespace ERP.Domain.Accounting.Exceptions
{
    /// <summary>
    /// يُطلق عند محاولة تعديل قيد محاسبي مغلق للتدقيق.
    /// Thrown when trying to modify a journal locked for audit.
    /// </summary>
    public class JournalLockedForAuditException : ExceptionBase
    {
        public JournalLockedForAuditException(string message) : base(message) { }
    }
}