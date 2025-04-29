// ValueObject: BillDocType
// الجداول: PricingLevel, ItemMovement, وغيرها (نوع مستند الفاتورة)
using Common.Domain;

public sealed class BillDocType : ValueObject
{
    public int? Value { get; }
    public BillDocType(int? value)
    {
        if (value.HasValue && value < 0)
            throw new ArgumentException("BillDocType cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents() { yield return Value; }
}