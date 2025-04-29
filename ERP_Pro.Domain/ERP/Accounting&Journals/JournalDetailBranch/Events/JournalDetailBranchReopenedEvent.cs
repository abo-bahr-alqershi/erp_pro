/// <summary>يتم إطلاق هذا الحدث عند إعادة فتح السطر بعد قفل أو ترحيل.</summary>
public class JournalDetailBranchReopenedEvent : DomainEventBase
{
    public JournalDetailBranchId Id { get; }
    public int? UserId { get; }
    public DateTime ReopenedOn { get; }
    public JournalDetailBranchReopenedEvent(JournalDetailBranchId id, int? userId, DateTime reopenedOn)
    {
        Id = id;
        UserId = userId;
        ReopenedOn = reopenedOn;
    }
}