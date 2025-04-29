using System;
using ERP.Domain.Common;

namespace ERP.Domain.Accounting.Exceptions
{
    /// <summary>
    /// يُطلق عند محاولة عمل قيد عكسي مخالف لسياسات النظام أو الفترة المحاسبية.
    /// Thrown when a reverse entry is not allowed due to business/policy constraints.
    /// </summary>
    public class JournalReverseNotAllowedException : ExceptionBase
    {
        public JournalReverseNotAllowedException(string message) : base(message) { }
    }
}