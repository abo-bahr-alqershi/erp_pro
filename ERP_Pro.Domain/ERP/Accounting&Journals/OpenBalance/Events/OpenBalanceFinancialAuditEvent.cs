using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Accounting.Domain.OpenBalance.Events
{
    public class OpenBalanceFinancialAuditEvent : DomainEventBase
    {
        public long DocSequence { get; }
        public int AuditedBy { get; }
        public DateTime AuditedOn { get; }
        public OpenBalanceFinancialAuditEvent(long docSequence, int auditedBy, DateTime auditedOn)
        {
            DocSequence = docSequence;
            AuditedBy = auditedBy;
            AuditedOn = auditedOn;
        }
    }
}
