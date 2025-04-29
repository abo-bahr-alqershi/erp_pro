// ValueObject: WarehouseAddress
// الجداول: WAREHOUSE_DETAILS
using Common.Domain;

public sealed class WarehouseAddress : ValueObject
{
    public string Value { get; }
    public WarehouseAddress(string value)
    {
        Value = value?.Trim();
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}