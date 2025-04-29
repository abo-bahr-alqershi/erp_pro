// ValueObject: WarehouseCostLimit
// الجداول: WAREHOUSE_DETAILS
using Common.Domain;

public sealed class WarehouseCostLimit : ValueObject
{
    public decimal? Value { get; }
    public WarehouseCostLimit(decimal? value)
    {
        if (value.HasValue && value < 0)
            throw new ArgumentException("WarehouseCostLimit cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}