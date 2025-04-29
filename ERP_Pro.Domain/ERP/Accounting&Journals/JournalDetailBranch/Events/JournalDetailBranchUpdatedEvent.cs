/// <summary>يتم إطلاق هذا الحدث عند تعديل تفاصيل القيد للفرع.</summary>
public class JournalDetailBranchUpdatedEvent : DomainEventBase
{
    public JournalDetailBranchId Id { get; }
    public DateTime OccurredOn { get; }
    public int? UserId { get; }
    public JournalDetailBranchUpdatedEvent(JournalDetailBranchId id, DateTime occurredOn, int? userId)
    {
        Id = id;
        OccurredOn = occurredOn;
        UserId = userId;
    }
}