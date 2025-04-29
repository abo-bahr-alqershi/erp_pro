// ValueObject: CollectorNo
// الجداول: WAREHOUSE_DETAILS
using Common.Domain;

public sealed class CollectorNo : ValueObject
{
    public long? Value { get; }
    public CollectorNo(long? value)
    {
        if (value.HasValue && value < 0)
            throw new ArgumentException("CollectorNo cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}