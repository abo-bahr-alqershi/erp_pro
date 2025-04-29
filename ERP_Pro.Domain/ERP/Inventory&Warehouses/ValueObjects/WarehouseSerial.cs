// ValueObject: WarehouseSerial
// الجداول: WAREHOUSE_DETAILS
using Common.Domain;

public sealed class WarehouseSerial : ValueObject
{
    public int Value { get; }
    public WarehouseSerial(int value)
    {
        if (value < 0)
            throw new ArgumentException("WarehouseSerial cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}