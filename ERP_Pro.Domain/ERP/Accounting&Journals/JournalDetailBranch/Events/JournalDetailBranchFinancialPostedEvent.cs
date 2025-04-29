/// <summary>يتم إطلاق هذا الحدث عند الترحيل المالي للسطر.</summary>
public class JournalDetailBranchFinancialPostedEvent : DomainEventBase
{
    public JournalDetailBranchId Id { get; }
    public int? PostedById { get; }
    public DateTime PostedOn { get; }
    public JournalDetailBranchFinancialPostedEvent(JournalDetailBranchId id, int? postedById, DateTime postedOn)
    {
        Id = id;
        PostedById = postedById;
        PostedOn = postedOn;
    }
}