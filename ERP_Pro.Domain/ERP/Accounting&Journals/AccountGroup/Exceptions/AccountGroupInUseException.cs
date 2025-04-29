using System;
using Common.Domain.Exceptions;

namespace Accounting.Domain.Exceptions
{
    /// <summary>
    /// يُرمى عند محاولة حذف مجموعة حسابات مرتبطة بحسابات أخرى
    /// </summary>
    public class AccountGroupInUseException : DomainException
    {
        public AccountGroupInUseException(int groupNo)
            : base($"لا يمكن حذف مجموعة الحسابات رقم '{groupNo}' لأنها مستخدمة في حسابات أخرى.")
        { }
    }
}