// ValueObject: DocSequence
// الجداول: ItemMovement، InventoryAdjustmentDetail، وغيرها

using Common.Domain;

public sealed class DocSequence : ValueObject
{
    public long Value { get; }

    public DocSequence(long value)
    {
        if (value < 0)
            throw new ArgumentException("DocSequence cannot be negative.");
        Value = value;
    }

    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}