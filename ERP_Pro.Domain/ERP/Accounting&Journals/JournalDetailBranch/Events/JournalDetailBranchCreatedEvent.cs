/// <summary>يتم إطلاق هذا الحدث عند إنشاء تفاصيل القيد للفرع.</summary>
public class JournalDetailBranchCreatedEvent : DomainEventBase
{
    public JournalDetailBranchId Id { get; }
    public DateTime OccurredOn { get; }
    public int? UserId { get; }
    public JournalDetailBranchCreatedEvent(JournalDetailBranchId id, DateTime occurredOn, int? userId)
    {
        Id = id;
        OccurredOn = occurredOn;
        UserId = userId;
    }
}