// ValueObject: Inactive
// الجداول: WAREHOUSE_DETAILS وغيرها (علم يدل على أن السجل غير مفعل)
using Common.Domain;

public sealed class Inactive : ValueObject
{
    public bool Value { get; }
    public Inactive(bool value)
    {
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}