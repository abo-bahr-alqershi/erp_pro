// ValueObject: SODescription
// الجداول: WAREHOUSE_DETAILS
using Common.Domain;

public sealed class SODescription : ValueObject
{
    public string Value { get; }
    public SODescription(string value)
    {
        Value = value?.Trim();
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}