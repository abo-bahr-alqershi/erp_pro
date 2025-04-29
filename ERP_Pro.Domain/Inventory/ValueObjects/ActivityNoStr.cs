// ValueObject: ActivityNoStr
// الجداول: WAREHOUSE_DETAILS
using Common.Domain;

public sealed class ActivityNoStr : ValueObject
{
    public string Value { get; }
    public ActivityNoStr(string value)
    {
        Value = value?.Trim();
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}