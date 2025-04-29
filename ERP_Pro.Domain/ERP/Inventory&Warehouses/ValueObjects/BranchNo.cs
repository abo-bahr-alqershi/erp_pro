// ValueObject: BranchNo
// الجداول: ItemBatch، ItemMovement، InventoryAdjustment، وغيرها

using Common.Domain;

public sealed class BranchNo : ValueObject
{
    public int Value { get; }

    public BranchNo(int value)
    {
        if (value <= 0)
            throw new ArgumentException("BranchNo must be positive.");
        Value = value;
    }

    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}