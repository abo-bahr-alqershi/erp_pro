// ValueObject: RegionCode
// الجداول: WAREHOUSE_DETAILS, StockCount, StockCountTmp
using Common.Domain;

public sealed class RegionCode : ValueObject
{
    public long? Value { get; }
    public RegionCode(long? value)
    {
        if (value.HasValue && value < 0)
            throw new ArgumentException("RegionCode cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}