// ValueObject: UpdateCount
// الجداول: WAREHOUSE_DETAILS وغيرها كثير
using Common.Domain;

public sealed class UpdateCount : ValueObject
{
    public int Value { get; }
    public UpdateCount(int value)
    {
        if (value < 0)
            throw new ArgumentException("UpdateCount cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}