using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Accounting.Domain.OpenBalance.Events
{
    public class OpenBalancePostedEvent : DomainEventBase
    {
        public long DocSequence { get; }
        public int PostedBy { get; }
        public OpenBalancePostedEvent(long docSequence, int postedBy)
        {
            DocSequence = docSequence;
            PostedBy = postedBy;
        }
    }
}
