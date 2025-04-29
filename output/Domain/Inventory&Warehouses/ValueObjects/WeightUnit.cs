// ValueObject: WeightUnit
// الجداول: تفاصيل الصنف وحركات المخزون
using Common.Domain;

public sealed class WeightUnit : ValueObject
{
    public string Value { get; }
    public WeightUnit(string value)
    {
        Value = value?.Trim();
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}