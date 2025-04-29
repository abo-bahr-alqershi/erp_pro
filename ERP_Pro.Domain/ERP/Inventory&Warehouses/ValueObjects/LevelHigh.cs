// ValueObject: LevelHigh
// الجداول: PricingLevel (أعلى مستوى)
using Common.Domain;

public sealed class LevelHigh : ValueObject
{
    public int? Value { get; }
    public LevelHigh(int? value)
    {
        if (value.HasValue && value < 0)
            throw new ArgumentException("LevelHigh cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents() { yield return Value; }
}