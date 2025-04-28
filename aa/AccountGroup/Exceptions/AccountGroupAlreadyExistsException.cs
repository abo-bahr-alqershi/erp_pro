using System;
using Common.Domain.Exceptions;

namespace Accounting.Domain.Exceptions
{
    /// <summary>
    /// يُرمى عند محاولة إضافة مجموعة حسابات بنفس الاسم موجودة مسبقًا
    /// </summary>
    public class AccountGroupAlreadyExistsException : DomainException
    {
        public AccountGroupAlreadyExistsException(string groupName)
            : base($"مجموعة الحسابات بالاسم '{groupName}' موجودة مسبقًا.")
        { }
    }
}