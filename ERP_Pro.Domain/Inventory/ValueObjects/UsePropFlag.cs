// ValueObject: UsePropFlag
// الجداول: WAREHOUSE_DETAILS
using Common.Domain;

public sealed class UsePropFlag : ValueObject
{
    public bool? Value { get; }
    public UsePropFlag(bool? value)
    {
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}