// ValueObject: SOType
// الجداول: WAREHOUSE_DETAILS
using Common.Domain;

public sealed class SOType : ValueObject
{
    public int? Value { get; }
    public SOType(int? value)
    {
        if (value.HasValue && value < 0)
            throw new ArgumentException("SOType cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}