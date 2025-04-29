using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Accounting.Domain.OpenBalance.Events
{
    public class OpenBalanceRestoredEvent : DomainEventBase
    {
        public long DocSequence { get; }
        public int RestoredBy { get; }
        public OpenBalanceRestoredEvent(long docSequence, int restoredBy)
        {
            DocSequence = docSequence;
            RestoredBy = restoredBy;
        }
    }
}
