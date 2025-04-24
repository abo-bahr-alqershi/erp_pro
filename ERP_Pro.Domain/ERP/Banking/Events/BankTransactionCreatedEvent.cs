using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Domain.Banking.Events
{
    public class BankTransactionCreatedEvent : DomainEventBase
    {
        public int BankTransactionId { get; }
        public BankTransactionCreatedEvent(int bankTransactionId) => BankTransactionId = bankTransactionId;
    }
}