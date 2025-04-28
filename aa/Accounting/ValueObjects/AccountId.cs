using ERP_Pro.Domain.Common.Primitives;

namespace ERP_Pro.Domain.Accounting.ValueObjects
{
    public class AccountId : EntityId
    {
        public AccountId(Guid value) : base(value) { }
        public static implicit operator AccountId(Guid value) => new AccountId(value);
    }
}