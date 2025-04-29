// ValueObject: ProvinceNo
// الجداول: WAREHOUSE_DETAILS
using Common.Domain;

public sealed class ProvinceNo : ValueObject
{
    public long? Value { get; }
    public ProvinceNo(long? value)
    {
        if (value.HasValue && value < 0)
            throw new ArgumentException("ProvinceNo cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}