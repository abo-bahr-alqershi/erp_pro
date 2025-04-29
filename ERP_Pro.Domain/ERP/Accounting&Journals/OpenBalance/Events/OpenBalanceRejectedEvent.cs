using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Accounting.Domain.OpenBalance.Events
{
    public class OpenBalanceRejectedEvent : DomainEventBase
    {
        public long DocSequence { get; }
        public int RejectedBy { get; }
        public string Reason { get; }
        public OpenBalanceRejectedEvent(long docSequence, int rejectedBy, string reason)
        {
            DocSequence = docSequence;
            RejectedBy = rejectedBy;
            Reason = reason;
        }
    }
}
