// ValueObject: Latitude (دائرة العرض)
// الجداول: WAREHOUSE_DETAILS
using Common.Domain;

public sealed class Latitude : ValueObject
{
    public string Value { get; }
    public Latitude(string value)
    {
        Value = value?.Trim();
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}