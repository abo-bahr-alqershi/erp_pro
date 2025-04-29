using System;
using ERP.Domain.Common;

namespace ERP.Domain.Accounting.Exceptions
{
    /// <summary>
    /// يُطلق عند إدخال قيمة دفعة غير منطقية أو غير متوافقة مع سياسات النظام.
    /// Thrown when the entered batch value is invalid or not allowed.
    /// </summary>
    public class InvalidBatchValueException : ExceptionBase
    {
        public InvalidBatchValueException(string message) : base(message) { }
    }
}