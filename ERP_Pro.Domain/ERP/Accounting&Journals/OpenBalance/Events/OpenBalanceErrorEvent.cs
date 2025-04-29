using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Accounting.Domain.OpenBalance.Events
{
    public class OpenBalanceErrorEvent : DomainEventBase
    {
        public long DocSequence { get; }
        public string ErrorMessage { get; }
        public DateTime OccurredOn { get; }
        public OpenBalanceErrorEvent(long docSequence, string errorMessage, DateTime occurredOn)
        {
            DocSequence = docSequence;
            ErrorMessage = errorMessage;
            OccurredOn = occurredOn;
        }
    }
}
