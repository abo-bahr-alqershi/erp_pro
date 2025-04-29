using Common.Domain.ValueObjects;

namespace Accounting.Domain.ValueObjects
{
    /// <summary>
    /// معرف مجموعة الحسابات (GroupNo) كـ ValueObject متوافق مع الـ Common
    /// </summary>
    public sealed class AccountGroupId : IdValueObject<int>
    {
        public AccountGroupId(int value) : base(value) { }
    }
}