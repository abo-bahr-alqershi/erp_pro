// ValueObject: DocSequenceRef
// يستخدم في: InventoryAdjustmentDetail, ASSEMBLE_KIT_ITEMS_DET, وغيرها (تسلسل السطر المرجعي)
using Common.Domain;

public sealed class DocSequenceRef : ValueObject
{
    public long Value { get; }
    public DocSequenceRef(long value)
    {
        if (value < 0)
            throw new ArgumentException("DocSequenceRef cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}