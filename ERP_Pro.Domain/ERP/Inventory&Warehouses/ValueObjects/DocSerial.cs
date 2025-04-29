// ValueObject: DocSerial
// الجداول: ItemMovement، InventoryAdjustmentDetail، وغيرها

using Common.Domain;

public sealed class DocSerial : ValueObject
{
    public long Value { get; }

    public DocSerial(long value)
    {
        if (value < 0)
            throw new ArgumentException("DocSerial cannot be negative.");
        Value = value;
    }

    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}