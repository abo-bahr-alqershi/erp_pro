// ValueObject: Location
// الجداول: WAREHOUSE_DETAILS
using Common.Domain;

public sealed class Location : ValueObject
{
    public string Value { get; }
    public Location(string value)
    {
        Value = value?.Trim();
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}