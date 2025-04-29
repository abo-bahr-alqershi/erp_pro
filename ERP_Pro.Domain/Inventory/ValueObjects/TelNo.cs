// ValueObject: TelNo
// الجداول: WAREHOUSE_DETAILS
using Common.Domain;

public sealed class TelNo : ValueObject
{
    public string Value { get; }
    public TelNo(string value)
    {
        Value = value?.Trim();
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}