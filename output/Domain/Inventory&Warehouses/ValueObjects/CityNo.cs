// ValueObject: CityNo
// الجداول: WAREHOUSE_DETAILS, StockCount, StockCountTmp
using Common.Domain;

public sealed class CityNo : ValueObject
{
    public long? Value { get; }
    public CityNo(long? value)
    {
        if (value.HasValue && value < 0)
            throw new ArgumentException("CityNo cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}