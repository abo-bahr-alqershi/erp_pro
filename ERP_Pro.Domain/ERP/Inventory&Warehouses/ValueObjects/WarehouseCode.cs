// ValueObject: WarehouseCode
// الجداول: جميع الجداول التي تحتوي على WarehouseCode كمفتاح أو معرف (مثل WAREHOUSE_DETAILS، ITEM_MOVEMENT، وغيرها)

using Common.Domain;

public sealed class WarehouseCode : ValueObject
{
    public long Value { get; }

    public WarehouseCode(long value)
    {
        if (value <= 0)
            throw new ArgumentException("WarehouseCode must be positive.");
        Value = value;
    }

    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}