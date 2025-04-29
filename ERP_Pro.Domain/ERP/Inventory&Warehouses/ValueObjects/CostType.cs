// ValueObject: CostType
// الجداول: PricingLevel (نوع التكلفة: أساسي/نهائي)
using Common.Domain;

public sealed class CostType : ValueObject
{
    public int? Value { get; }
    public CostType(int? value)
    {
        if (value.HasValue && value < 0)
            throw new ArgumentException("CostType cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents() { yield return Value; }
}