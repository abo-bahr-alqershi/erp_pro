// ValueObject: PercentPriceFromCost
// الجداول: PricingLevel (نسبة السعر من التكلفة)
using Common.Domain;

public sealed class PercentPriceFromCost : ValueObject
{
    public decimal? Value { get; }
    public PercentPriceFromCost(decimal? value)
    {
        if (value.HasValue && value < 0)
            throw new ArgumentException("PercentPriceFromCost cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents() { yield return Value; }
}