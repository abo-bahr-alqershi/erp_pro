// ValueObject: DocPost
// الجداول: أعلام ترحيل المستندات
using Common.Domain;

public sealed class DocPost : ValueObject
{
    public bool Value { get; }
    public DocPost(bool value)
    {
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}