// ValueObject: AllowDeleteItem
// الجداول: إعدادات أو خصائص الصنف/المستودع
using Common.Domain;

public sealed class AllowDeleteItem : ValueObject
{
    public bool? Value { get; }
    public AllowDeleteItem(bool? value)
    {
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}