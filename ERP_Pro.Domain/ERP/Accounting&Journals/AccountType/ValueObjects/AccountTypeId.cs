using Common.Domain.ValueObjects;

namespace Accounting.Domain.ValueObjects
{
    /// <summary>
    /// معرف نوع الحساب (AccountType) كـ ValueObject متوافق مع الـ Common
    /// </summary>
    public sealed class AccountTypeId : IdValueObject<int>
    {
        public AccountTypeId(int value) : base(value) { }
    }
}