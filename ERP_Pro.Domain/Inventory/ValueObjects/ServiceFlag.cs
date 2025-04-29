// ValueObject: ServiceFlag
// الجداول: WAREHOUSE_DETAILS وغيرها (علم يدل على أن المستودع خدمي)
using Common.Domain;

public sealed class ServiceFlag : ValueObject
{
    public bool Value { get; }
    public ServiceFlag(bool value)
    {
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}