// ValueObject: CompanyNo
// الجداول: ItemBatch، ItemMovement، InventoryAdjustment، وغيرها

using Common.Domain;

public sealed class CompanyNo : ValueObject
{
    public int Value { get; }

    public CompanyNo(int value)
    {
        if (value <= 0)
            throw new ArgumentException("CompanyNo must be positive.");
        Value = value;
    }

    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}