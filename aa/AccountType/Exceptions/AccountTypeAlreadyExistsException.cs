using Common.Domain.Exceptions;

namespace Accounting.Domain.Exceptions
{
    /// <summary>
    /// يُرمى عند محاولة إضافة نوع حساب بنفس الاسم موجود مسبقًا
    /// </summary>
    public class AccountTypeAlreadyExistsException : DomainException
    {
        public AccountTypeAlreadyExistsException(string accountTypeName)
            : base($"نوع الحساب بالاسم '{accountTypeName}' موجود مسبقًا.")
        { }
    }
}