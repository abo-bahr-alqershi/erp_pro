// ValueObject: FreeType
// الجداول: تفاصيل الصنف وحركات المخزون
using Common.Domain;

public sealed class FreeType : ValueObject
{
    public string Value { get; }
    public FreeType(string value)
    {
        Value = value?.Trim();
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}