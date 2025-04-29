using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Accounting.Domain.OpenBalance.Events
{
    /// <summary>
    ///   يُطلق عند الوصول إلى رصيد مفتوح.
    /// </summary>
    public class OpenBalanceAccessedEvent : DomainEventBase
    {
        public long DocSequence { get; }
        public int UserId { get; }
        public DateTime AccessedOn { get; }
        public OpenBalanceAccessedEvent(long docSequence, int userId, DateTime accessedOn)
        {
            DocSequence = docSequence;
            UserId = userId;
            AccessedOn = accessedOn;
        }
    }
}
