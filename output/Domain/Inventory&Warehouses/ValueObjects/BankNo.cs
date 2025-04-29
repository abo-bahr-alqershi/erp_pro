// ValueObject: BankNo
// الجداول: WAREHOUSE_DETAILS
using Common.Domain;

public sealed class BankNo : ValueObject
{
    public long? Value { get; }
    public BankNo(long? value)
    {
        if (value.HasValue && value < 0)
            throw new ArgumentException("BankNo cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}