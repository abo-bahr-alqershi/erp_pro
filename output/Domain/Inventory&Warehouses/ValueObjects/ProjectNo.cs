// ValueObject: ProjectNo
// الجداول: تفاصيل حركة الصنف، سندات
using Common.Domain;

public sealed class ProjectNo : ValueObject
{
    public string Value { get; }
    public ProjectNo(string value)
    {
        Value = value?.Trim();
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}