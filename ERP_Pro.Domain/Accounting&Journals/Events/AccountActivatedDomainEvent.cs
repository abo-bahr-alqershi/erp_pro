using ERP_Pro.Domain.Common.Events;
using ERP_Pro.Domain.Accounting.ValueObjects;

namespace ERP_Pro.Domain.Accounting.Events
{
    public class AccountActivatedDomainEvent : DomainEventBase
    {
        public AccountId AccountId { get; }
        public AccountActivatedDomainEvent(AccountId accountId) => AccountId = accountId;
    }
}