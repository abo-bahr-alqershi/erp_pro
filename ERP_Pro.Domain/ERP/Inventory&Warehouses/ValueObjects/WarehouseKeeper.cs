// ValueObject: WarehouseKeeper
// الجداول: WAREHOUSE_DETAILS
using Common.Domain;

public sealed class WarehouseKeeper : ValueObject
{
    public string Value { get; }
    public WarehouseKeeper(string value)
    {
        Value = value?.Trim();
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}