// ValueObject: NoSale
// الجداول: WAREHOUSE_DETAILS
using Common.Domain;

public sealed class NoSale : ValueObject
{
    public bool? Value { get; }
    public NoSale(bool? value)
    {
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}