using ERP_Pro.Domain.Common.Events;
using ERP_Pro.Domain.Accounting.ValueObjects;

namespace ERP_Pro.Domain.Accounting.Events
{
    public class AccountCreatedDomainEvent : DomainEventBase
    {
        public AccountId AccountId { get; }
        public AccountCreatedDomainEvent(AccountId accountId) => AccountId = accountId;
    }
}