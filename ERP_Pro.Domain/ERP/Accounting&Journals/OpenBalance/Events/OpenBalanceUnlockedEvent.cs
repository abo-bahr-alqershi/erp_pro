using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Accounting.Domain.OpenBalance.Events
{
    public class OpenBalanceUnlockedEvent : DomainEventBase
    {
        public long DocSequence { get; }
        public int UnlockedBy { get; }
        public DateTime UnlockedOn { get; }
        public OpenBalanceUnlockedEvent(long docSequence, int unlockedBy, DateTime unlockedOn)
        {
            DocSequence = docSequence;
            UnlockedBy = unlockedBy;
            UnlockedOn = unlockedOn;
        }
    }
}
