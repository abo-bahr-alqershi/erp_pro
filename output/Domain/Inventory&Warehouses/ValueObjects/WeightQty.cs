// ValueObject: WeightQty
// الجداول: تفاصيل الصنف وحركات المخزون
using Common.Domain;

public sealed class WeightQty : ValueObject
{
    public decimal? Value { get; }
    public WeightQty(decimal? value)
    {
        if (value.HasValue && value < 0)
            throw new ArgumentException("WeightQty cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}