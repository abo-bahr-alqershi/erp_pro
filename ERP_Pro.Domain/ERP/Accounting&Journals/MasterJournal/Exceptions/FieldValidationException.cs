using System;
using ERP.Domain.Common;

namespace ERP.Domain.Accounting.Exceptions
{
    /// <summary>
    /// يُطلق عند وجود خطأ تحقق في أحد الحقول الحساسة مثل التاريخ أو رقم المرجع أو المبلغ.
    /// Thrown when a critical field (date, reference, amount, etc.) fails validation.
    /// </summary>
    public class FieldValidationException : ExceptionBase
    {
        public FieldValidationException(string message) : base(message) { }
    }
}