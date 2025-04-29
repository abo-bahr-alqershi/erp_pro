using ERP_Pro.Domain.Common.Events;
using ERP_Pro.Domain.Accounting.ValueObjects;

namespace ERP_Pro.Domain.Accounting.Events
{
    public class AccountUpdatedDomainEvent : DomainEventBase
    {
        public AccountId AccountId { get; }
        public AccountUpdatedDomainEvent(AccountId accountId) => AccountId = accountId;
    }
}