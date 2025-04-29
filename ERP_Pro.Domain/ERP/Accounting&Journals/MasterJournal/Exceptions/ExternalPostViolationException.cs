using System;
using ERP.Domain.Common;

namespace ERP.Domain.Accounting.Exceptions
{
    /// <summary>
    /// يُطلق عند محاولة ترحيل خارجي غير مصرح به لرأس القيد.
    /// Thrown when an unauthorized external post operation is attempted.
    /// </summary>
    public class ExternalPostViolationException : ExceptionBase
    {
        public ExternalPostViolationException(string message) : base(message) { }
    }
}