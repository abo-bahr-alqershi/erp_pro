// ValueObject: GPS (إحداثيات GPS)
// الجداول: WAREHOUSE_DETAILS
using Common.Domain;

public sealed class GPS : ValueObject
{
    public string Value { get; }
    public GPS(string value)
    {
        Value = value?.Trim();
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}