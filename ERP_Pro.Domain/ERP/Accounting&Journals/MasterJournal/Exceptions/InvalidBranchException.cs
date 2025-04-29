using System;
using ERP.Domain.Common;

namespace ERP.Domain.Accounting.Exceptions
{
    /// <summary>
    /// يُطلق عند إدخال رقم فرع غير صالح أو غير معرف في النظام.
    /// Thrown when the specified branch is invalid or does not exist.
    /// </summary>
    public class InvalidBranchException : ExceptionBase
    {
        public InvalidBranchException(string message) : base(message) { }
    }
}