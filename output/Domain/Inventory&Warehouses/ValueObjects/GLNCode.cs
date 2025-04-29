// ValueObject: GLNCode (رقم الموقع العالمي للمستودع)
// الجداول: WAREHOUSE_DETAILS
using Common.Domain;

public sealed class GLNCode : ValueObject
{
    public string Value { get; }
    public GLNCode(string value)
    {
        Value = value?.Trim();
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}