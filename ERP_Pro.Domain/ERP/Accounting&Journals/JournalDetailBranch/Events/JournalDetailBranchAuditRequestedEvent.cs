/// <summary>يتم إطلاق هذا الحدث عند طلب تدقيق للسطر.</summary>
public class JournalDetailBranchAuditRequestedEvent : DomainEventBase
{
    public JournalDetailBranchId Id { get; }
    public int? RequestedById { get; }
    public DateTime RequestedOn { get; }
    public JournalDetailBranchAuditRequestedEvent(JournalDetailBranchId id, int? requestedById, DateTime requestedOn)
    {
        Id = id;
        RequestedById = requestedById;
        RequestedOn = requestedOn;
    }
}