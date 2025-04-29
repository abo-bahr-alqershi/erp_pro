// ValueObject: OutNo
// الجداول: مستندات المخزون وحركات الصرف والمستودعات
using Common.Domain;

public sealed class OutNo : ValueObject
{
    public string Value { get; }
    public OutNo(string value)
    {
        Value = value?.Trim();
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}