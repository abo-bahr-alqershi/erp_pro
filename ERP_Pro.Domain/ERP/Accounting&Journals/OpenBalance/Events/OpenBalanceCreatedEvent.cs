using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Accounting.Domain.OpenBalance.Events
{
    /// <summary>
    /// يُطلق عند إنشاء رصيد مفتوح.
    /// </summary>
    public class OpenBalanceCreatedEvent : DomainEventBase
    {
        public long DocSequence { get; }
        public OpenBalanceCreatedEvent(long docSequence) => DocSequence = docSequence;
    }
}
