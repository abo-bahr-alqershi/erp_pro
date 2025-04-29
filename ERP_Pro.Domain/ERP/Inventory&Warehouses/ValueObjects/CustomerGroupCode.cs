// ValueObject: CustomerGroupCode
// الجداول: WAREHOUSE_DETAILS
using Common.Domain;

public sealed class CustomerGroupCode : ValueObject
{
    public long? Value { get; }
    public CustomerGroupCode(long? value)
    {
        if (value.HasValue && value < 0)
            throw new ArgumentException("CustomerGroupCode cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}