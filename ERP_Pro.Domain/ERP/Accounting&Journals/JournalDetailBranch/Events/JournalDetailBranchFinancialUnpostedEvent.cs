/// <summary>يتم إطلاق هذا الحدث عند إلغاء الترحيل المالي للسطر.</summary>
public class JournalDetailBranchFinancialUnpostedEvent : DomainEventBase
{
    public JournalDetailBranchId Id { get; }
    public int? UnpostedById { get; }
    public DateTime UnpostedOn { get; }
    public JournalDetailBranchFinancialUnpostedEvent(JournalDetailBranchId id, int? unpostedById, DateTime unpostedOn)
    {
        Id = id;
        UnpostedById = unpostedById;
        UnpostedOn = unpostedOn;
    }
}