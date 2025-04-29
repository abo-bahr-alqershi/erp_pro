// ValueObject: WarehouseGroupCode
// الجداول: WAREHOUSE_DETAILS، WAREHOUSE_GROUP، وغيرها

using Common.Domain;

public sealed class WarehouseGroupCode : ValueObject
{
    public long Value { get; }

    public WarehouseGroupCode(long value)
    {
        if (value <= 0)
            throw new ArgumentException("WarehouseGroupCode must be positive.");
        Value = value;
    }

    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}