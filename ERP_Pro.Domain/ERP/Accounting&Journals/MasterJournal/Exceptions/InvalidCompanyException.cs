using System;
using ERP.Domain.Common;

namespace ERP.Domain.Accounting.Exceptions
{
    /// <summary>
    /// يُطلق عند إدخال رقم شركة غير صالح أو غير معرف في النظام.
    /// Thrown when the specified company is invalid or does not exist.
    /// </summary>
    public class InvalidCompanyException : ExceptionBase
    {
        public InvalidCompanyException(string message) : base(message) { }
    }
}