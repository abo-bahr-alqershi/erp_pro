namespace ERP_Pro.Domain.Taxes.Events
{
    public class TaxAppliedEvent : IDomainEvent
    {
        public Guid TaxAssignmentId { get; }
        public TaxAppliedEvent(Guid taxAssignmentId) => TaxAssignmentId = taxAssignmentId;
    }
}