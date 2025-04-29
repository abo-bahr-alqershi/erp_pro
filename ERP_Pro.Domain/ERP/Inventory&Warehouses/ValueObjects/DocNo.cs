// ValueObject: DocNo
// الجداول: ItemMovement، InventoryAdjustment، وغيرها

using Common.Domain;

public sealed class DocNo : ValueObject
{
    public long Value { get; }

    public DocNo(long value)
    {
        if (value <= 0)
            throw new ArgumentException("DocNo must be positive.");
        Value = value;
    }

    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}