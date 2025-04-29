using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Accounting.Domain.OpenBalance.Events
{
    public class OpenBalanceUnpostedEvent : DomainEventBase
    {
        public long DocSequence { get; }
        public int UnpostedBy { get; }
        public OpenBalanceUnpostedEvent(long docSequence, int unpostedBy)
        {
            DocSequence = docSequence;
            UnpostedBy = unpostedBy;
        }
    }
}
