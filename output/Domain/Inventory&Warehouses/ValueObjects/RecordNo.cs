// ValueObject: RecordNo
// يستخدم في: ItemMovement، InventoryAdjustmentDetail، وغيرها
using Common.Domain;

public sealed class RecordNo : ValueObject
{
    public long Value { get; }
    public RecordNo(long value)
    {
        if (value < 0)
            throw new ArgumentException("RecordNo cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}