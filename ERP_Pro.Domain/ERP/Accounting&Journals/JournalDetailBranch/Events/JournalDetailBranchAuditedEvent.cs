/// <summary>يتم إطلاق هذا الحدث عند اعتماد التدقيق.</summary>
public class JournalDetailBranchAuditedEvent : DomainEventBase
{
    public JournalDetailBranchId Id { get; }
    public int? AuditorId { get; }
    public DateTime AuditedOn { get; }
    public JournalDetailBranchAuditedEvent(JournalDetailBranchId id, int? auditorId, DateTime auditedOn)
    {
        Id = id;
        AuditorId = auditorId;
        AuditedOn = auditedOn;
    }
}