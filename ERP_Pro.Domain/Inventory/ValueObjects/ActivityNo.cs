// ValueObject: ActivityNo
// الجداول: تفاصيل حركة الصنف، سندات
using Common.Domain;

public sealed class ActivityNo : ValueObject
{
    public string Value { get; }
    public ActivityNo(string value)
    {
        Value = value?.Trim();
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}