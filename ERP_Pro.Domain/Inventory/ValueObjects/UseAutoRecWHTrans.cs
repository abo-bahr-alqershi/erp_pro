// ValueObject: UseAutoRecWHTrans
// الجداول: WAREHOUSE_DETAILS وغيرها (علم يدل على استخدام الاستلام الآلي لتحويل المستودع)
using Common.Domain;

public sealed class UseAutoRecWHTrans : ValueObject
{
    public bool Value { get; }
    public UseAutoRecWHTrans(bool value)
    {
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}