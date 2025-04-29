using Common.Domain.Exceptions;

namespace Accounting.Domain.Exceptions
{
    /// <summary>
    /// يُرمى عند محاولة حذف نوع حساب مستخدم في حسابات
    /// </summary>
    public class AccountTypeInUseException : DomainException
    {
        public AccountTypeInUseException(int accountType)
            : base($"لا يمكن حذف نوع الحساب رقم '{accountType}' لأنه مستخدم في حسابات أخرى.")
        { }
    }
}