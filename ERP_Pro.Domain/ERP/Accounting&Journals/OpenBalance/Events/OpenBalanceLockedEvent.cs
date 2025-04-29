using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Accounting.Domain.OpenBalance.Events
{
    public class OpenBalanceLockedEvent : DomainEventBase
    {
        public long DocSequence { get; }
        public int LockedBy { get; }
        public DateTime LockedOn { get; }
        public OpenBalanceLockedEvent(long docSequence, int lockedBy, DateTime lockedOn)
        {
            DocSequence = docSequence;
            LockedBy = lockedBy;
            LockedOn = lockedOn;
        }
    }
}
