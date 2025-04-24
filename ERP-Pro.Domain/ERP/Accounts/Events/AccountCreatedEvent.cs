using ERP_Pro.Domain.Common.Events;
using System;

namespace ERP_Pro.Domain.Accounts.Events
{
    public class AccountCreatedEvent : DomainEventBase
    {
        public int AccountId { get; }
        public AccountCreatedEvent(int accountId)
        {
            AccountId = accountId;
        }
    }
}