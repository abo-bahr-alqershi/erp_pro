// ValueObject: AssistantNo
// الجداول: تفاصيل حركة الصنف، سندات، حسابات مساعدة
using Common.Domain;

public sealed class AssistantNo : ValueObject
{
    public string Value { get; }
    public AssistantNo(string value)
    {
        Value = value?.Trim();
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}