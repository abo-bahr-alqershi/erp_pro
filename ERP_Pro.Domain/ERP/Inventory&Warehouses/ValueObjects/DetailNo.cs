// ValueObject: DetailNo
// الجداول: تفاصيل حركة الصنف، سندات، تفاصيل مساعدة
using Common.Domain;

public sealed class DetailNo : ValueObject
{
    public string Value { get; }
    public DetailNo(string value)
    {
        Value = value?.Trim();
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}