namespace ERP_Pro.Domain.Banking.Events
{
    public class BankAccountCreatedEvent : IDomainEvent
    {
        public Guid BankAccountId { get; }
        public BankAccountCreatedEvent(Guid bankAccountId) => BankAccountId = bankAccountId;
    }
}