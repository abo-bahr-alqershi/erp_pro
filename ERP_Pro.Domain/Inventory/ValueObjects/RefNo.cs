// ValueObject: RefNo
// الجداول: مستندات المخزون وحركات الصرف
using Common.Domain;

public sealed class RefNo : ValueObject
{
    public string Value { get; }
    public RefNo(string value)
    {
        Value = value?.Trim();
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}