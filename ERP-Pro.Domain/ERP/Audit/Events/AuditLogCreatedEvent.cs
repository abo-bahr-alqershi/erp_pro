using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Domain.Audit.Events
{
    public class AuditLogCreatedEvent : DomainEventBase
    {
        public int AuditLogId { get; }
        public AuditLogCreatedEvent(int auditLogId) => AuditLogId = auditLogId;
    }
}