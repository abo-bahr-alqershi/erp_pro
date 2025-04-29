// ValueObject: SCNo
// الجداول: WAREHOUSE_DETAILS
using Common.Domain;

public sealed class SCNo : ValueObject
{
    public int? Value { get; }
    public SCNo(int? value)
    {
        if (value.HasValue && value < 0)
            throw new ArgumentException("SCNo cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}