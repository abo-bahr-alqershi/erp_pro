// ValueObject: CustomerCode
// الجداول: WAREHOUSE_DETAILS
using Common.Domain;

public sealed class CustomerCode : ValueObject
{
    public string Value { get; }
    public CustomerCode(string value)
    {
        Value = value?.Trim();
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}