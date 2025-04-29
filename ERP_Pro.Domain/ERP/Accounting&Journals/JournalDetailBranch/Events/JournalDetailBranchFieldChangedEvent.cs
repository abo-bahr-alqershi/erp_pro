/// <summary>يتم إطلاق هذا الحدث عند تغيير حقل حساس (فرع، حساب...)</summary>
public class JournalDetailBranchFieldChangedEvent : DomainEventBase
{
    public JournalDetailBranchId Id { get; }
    public string FieldName { get; }
    public object OldValue { get; }
    public object NewValue { get; }
    public int? UserId { get; }
    public DateTime ChangedOn { get; }
    public JournalDetailBranchFieldChangedEvent(JournalDetailBranchId id, string fieldName, object oldValue, object newValue, int? userId, DateTime changedOn)
    {
        Id = id;
        FieldName = fieldName;
        OldValue = oldValue;
        NewValue = newValue;
        UserId = userId;
        ChangedOn = changedOn;
    }
}