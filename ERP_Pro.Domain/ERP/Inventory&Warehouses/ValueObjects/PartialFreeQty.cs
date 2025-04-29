// ValueObject: PartialFreeQty
// الجداول: تفاصيل الصنف وحركات المخزون
using Common.Domain;

public sealed class PartialFreeQty : ValueObject
{
    public decimal? Value { get; }
    public PartialFreeQty(decimal? value)
    {
        if (value.HasValue && value < 0)
            throw new ArgumentException("PartialFreeQty cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}