// ValueObject: FreeQty
// الجداول: تفاصيل الصنف وحركات المخزون
using Common.Domain;

public sealed class FreeQty : ValueObject
{
    public decimal? Value { get; }
    public FreeQty(decimal? value)
    {
        if (value.HasValue && value < 0)
            throw new ArgumentException("FreeQty cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}