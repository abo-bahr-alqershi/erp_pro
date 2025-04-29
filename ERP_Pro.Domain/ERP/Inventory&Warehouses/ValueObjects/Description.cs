// ValueObject: Description
// الجداول: شروحات عامة لكافة المستندات والتفاصيل
using Common.Domain;

public sealed class Description : ValueObject
{
    public string Value { get; }
    public Description(string value)
    {
        Value = value?.Trim();
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}