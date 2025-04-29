// ValueObject: LevelAName
// الجداول: PricingLevel (اسم المستوى بالعربي)
using Common.Domain;

public sealed class LevelAName : ValueObject
{
    public string Value { get; }
    public LevelAName(string value)
    {
        Value = value?.Trim();
    }
    protected override IEnumerable<object> GetEqualityComponents() { yield return Value; }
}