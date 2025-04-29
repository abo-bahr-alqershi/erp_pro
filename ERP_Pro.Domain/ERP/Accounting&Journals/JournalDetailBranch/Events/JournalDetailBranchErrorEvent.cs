/// <summary>يتم إطلاق هذا الحدث عند حصول خطأ أثناء معالجة مالية للسطر.</summary>
public class JournalDetailBranchErrorEvent : DomainEventBase
{
    public JournalDetailBranchId Id { get; }
    public string ErrorMessage { get; }
    public DateTime OccurredOn { get; }
    public JournalDetailBranchErrorEvent(JournalDetailBranchId id, string errorMessage, DateTime occurredOn)
    {
        Id = id;
        ErrorMessage = errorMessage;
        OccurredOn = occurredOn;
    }
}