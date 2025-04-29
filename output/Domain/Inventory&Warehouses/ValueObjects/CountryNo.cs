// ValueObject: CountryNo
// الجداول: WAREHOUSE_DETAILS
using Common.Domain;

public sealed class CountryNo : ValueObject
{
    public int? Value { get; }
    public CountryNo(int? value)
    {
        if (value.HasValue && value < 0)
            throw new ArgumentException("CountryNo cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}