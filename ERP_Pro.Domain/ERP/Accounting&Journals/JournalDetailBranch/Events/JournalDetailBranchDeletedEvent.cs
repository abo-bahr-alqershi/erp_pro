/// <summary>يتم إطلاق هذا الحدث عند حذف تفاصيل القيد للفرع.</summary>
public class JournalDetailBranchDeletedEvent : DomainEventBase
{
    public JournalDetailBranchId Id { get; }
    public DateTime OccurredOn { get; }
    public int? UserId { get; }
    public JournalDetailBranchDeletedEvent(JournalDetailBranchId id, DateTime occurredOn, int? userId)
    {
        Id = id;
        OccurredOn = occurredOn;
        UserId = userId;
    }
}