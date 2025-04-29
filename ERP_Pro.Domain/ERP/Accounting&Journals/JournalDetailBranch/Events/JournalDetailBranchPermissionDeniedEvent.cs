/// <summary>يتم إطلاق هذا الحدث عند محاولة وصول غير مصرّح للسطر.</summary>
public class JournalDetailBranchPermissionDeniedEvent : DomainEventBase
{
    public JournalDetailBranchId Id { get; }
    public int? UserId { get; }
    public DateTime AttemptedOn { get; }
    public JournalDetailBranchPermissionDeniedEvent(JournalDetailBranchId id, int? userId, DateTime attemptedOn)
    {
        Id = id;
        UserId = userId;
        AttemptedOn = attemptedOn;
    }
}