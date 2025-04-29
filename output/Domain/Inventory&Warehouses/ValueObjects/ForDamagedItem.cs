// ValueObject: ForDamagedItem
// الجداول: أعلام المستودع مخصص للأصناف التالفة
using Common.Domain;

public sealed class ForDamagedItem : ValueObject
{
    public bool Value { get; }
    public ForDamagedItem(bool value)
    {
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}