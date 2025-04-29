// ValueObject: PriceLevel
// الجداول: WAREHOUSE_DETAILS
using Common.Domain;

public sealed class PriceLevel : ValueObject
{
    public int Value { get; }
    public PriceLevel(int value)
    {
        if (value < 0)
            throw new ArgumentException("PriceLevel cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}