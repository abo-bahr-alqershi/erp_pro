using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Domain.Taxes.Events
{
    public class TaxCreatedEvent : DomainEventBase
    {
        public int TaxId { get; }
        public TaxCreatedEvent(int taxId) => TaxId = taxId;
    }
}