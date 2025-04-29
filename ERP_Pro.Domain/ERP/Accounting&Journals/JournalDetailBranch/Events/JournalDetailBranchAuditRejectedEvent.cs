/// <summary>يتم إطلاق هذا الحدث عند رفض التدقيق للسطر.</summary>
public class JournalDetailBranchAuditRejectedEvent : DomainEventBase
{
    public JournalDetailBranchId Id { get; }
    public int? AuditorId { get; }
    public string Reason { get; }
    public DateTime RejectedOn { get; }
    public JournalDetailBranchAuditRejectedEvent(JournalDetailBranchId id, int? auditorId, string reason, DateTime rejectedOn)
    {
        Id = id;
        AuditorId = auditorId;
        Reason = reason;
        RejectedOn = rejectedOn;
    }
}