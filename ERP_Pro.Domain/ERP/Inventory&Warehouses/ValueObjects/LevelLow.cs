// ValueObject: LevelLow
// الجداول: PricingLevel (أقل مستوى)
using Common.Domain;

public sealed class LevelLow : ValueObject
{
    public int? Value { get; }
    public LevelLow(int? value)
    {
        if (value.HasValue && value < 0)
            throw new ArgumentException("LevelLow cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents() { yield return Value; }
}