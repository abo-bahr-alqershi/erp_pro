/// <summary>يتم إطلاق هذا الحدث عند مراجعة السطر من مدقق.</summary>
public class JournalDetailBranchReviewedEvent : DomainEventBase
{
    public JournalDetailBranchId Id { get; }
    public int? ReviewerId { get; }
    public DateTime ReviewedOn { get; }
    public JournalDetailBranchReviewedEvent(JournalDetailBranchId id, int? reviewerId, DateTime reviewedOn)
    {
        Id = id;
        ReviewerId = reviewerId;
        ReviewedOn = reviewedOn;
    }
}