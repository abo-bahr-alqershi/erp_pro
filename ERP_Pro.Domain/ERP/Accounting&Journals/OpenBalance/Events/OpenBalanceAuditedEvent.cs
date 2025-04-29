using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Accounting.Domain.OpenBalance.Events
{
    public class OpenBalanceAuditedEvent : DomainEventBase
    {
        public long DocSequence { get; }
        public int AuditedBy { get; }
        public OpenBalanceAuditedEvent(long docSequence, int auditedBy)
        {
            DocSequence = docSequence;
            AuditedBy = auditedBy;
        }
    }
}
