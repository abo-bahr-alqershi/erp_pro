/// <summary>يتم إطلاق هذا الحدث عند محاولة تنفيذ عملية ممنوعة دومينيًا.</summary>
public class JournalDetailBranchInvalidOperationEvent : DomainEventBase
{
    public JournalDetailBranchId Id { get; }
    public string Operation { get; }
    public int? UserId { get; }
    public DateTime AttemptedOn { get; }
    public JournalDetailBranchInvalidOperationEvent(JournalDetailBranchId id, string operation, int? userId, DateTime attemptedOn)
    {
        Id = id;
        Operation = operation;
        UserId = userId;
        AttemptedOn = attemptedOn;
    }
}