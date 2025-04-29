using System;
using ERP.Domain.Common;

namespace ERP.Domain.Accounting.Exceptions
{
    /// <summary>
    /// يُطلق عند رصد محاولة عبث أو تعديل غير مشروع في سجلات التدقيق.
    /// Thrown when tampering with audit trail records is detected.
    /// </summary>
    public class JournalAuditTrailTamperingException : ExceptionBase
    {
        public JournalAuditTrailTamperingException(string message) : base(message) { }
    }
}