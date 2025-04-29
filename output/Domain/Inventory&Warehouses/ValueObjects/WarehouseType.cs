// ValueObject: WarehouseType
// الجداول: WAREHOUSE_DETAILS
using Common.Domain;

public sealed class WarehouseType : ValueObject
{
    public int Value { get; }
    public WarehouseType(int value)
    {
        if (value < 0)
            throw new ArgumentException("WarehouseType cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}