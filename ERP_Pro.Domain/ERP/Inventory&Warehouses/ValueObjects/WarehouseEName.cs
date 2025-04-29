// ValueObject: WarehouseEName
// الجداول: WAREHOUSE_DETAILS
using Common.Domain;

public sealed class WarehouseEName : ValueObject
{
    public string Value { get; }
    public WarehouseEName(string value)
    {
        Value = value?.Trim();
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}