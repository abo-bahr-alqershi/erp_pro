using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Accounting.Domain.OpenBalance.Events
{
    public class OpenBalanceUpdatedEvent : DomainEventBase
    {
        public long DocSequence { get; }
        public OpenBalanceUpdatedEvent(long docSequence) => DocSequence = docSequence;
    }
}
