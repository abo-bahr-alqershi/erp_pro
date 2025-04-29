// ValueObject: BranchYear
// الجداول: ItemBatch، ItemMovement، InventoryAdjustment، وغيرها

using Common.Domain;

public sealed class BranchYear : ValueObject
{
    public int Value { get; }

    public BranchYear(int value)
    {
        if (value < 0)
            throw new ArgumentException("BranchYear cannot be negative.");
        Value = value;
    }

    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}