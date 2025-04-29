// ValueObject: WarehouseName
// الجداول: WAREHOUSE_DETAILS
using Common.Domain;

public sealed class WarehouseName : ValueObject
{
    public string Value { get; }
    public WarehouseName(string value)
    {
        if (string.IsNullOrWhiteSpace(value))
            throw new ArgumentException("WarehouseName cannot be empty.");
        Value = value.Trim();
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}