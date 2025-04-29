// ValueObject: Note
// الجداول: كافة المستندات التي تحتوي على ملاحظات
using Common.Domain;

public sealed class Note : ValueObject
{
    public string Value { get; }
    public Note(string value)
    {
        Value = value?.Trim();
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}