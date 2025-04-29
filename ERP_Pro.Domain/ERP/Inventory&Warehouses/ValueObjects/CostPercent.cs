// ValueObject: CostPercent
// الجداول: PricingLevel (نسبة التكلفة)
using Common.Domain;

public sealed class CostPercent : ValueObject
{
    public decimal? Value { get; }
    public CostPercent(decimal? value)
    {
        if (value.HasValue && value < 0)
            throw new ArgumentException("CostPercent cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents() { yield return Value; }
}