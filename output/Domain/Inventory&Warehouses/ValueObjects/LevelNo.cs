// ValueObject: LevelNo
// الجداول: ItemPrice، PricingLevel، وغيرها

using Common.Domain;

public sealed class LevelNo : ValueObject
{
    public int Value { get; }

    public LevelNo(int value)
    {
        if (value <= 0)
            throw new ArgumentException("LevelNo must be positive.");
        Value = value;
    }

    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}