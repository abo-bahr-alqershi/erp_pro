// ValueObject: LevelDefault
// الجداول: PricingLevel (المستوى الافتراضي)
using Common.Domain;

public sealed class LevelDefault : ValueObject
{
    public bool? Value { get; }
    public LevelDefault(bool? value)
    {
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents() { yield return Value; }
}