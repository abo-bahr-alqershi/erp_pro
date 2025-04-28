using ERP_Pro.Domain.Common.Events;
using ERP_Pro.Domain.Accounting.ValueObjects;

namespace ERP_Pro.Domain.Accounting.Events
{
    public class AccountClosedDomainEvent : DomainEventBase
    {
        public AccountId AccountId { get; }
        public AccountClosedDomainEvent(AccountId accountId) => AccountId = accountId;
    }
}