// ValueObject: ExceedItemQty
// الجداول: إعدادات أو خصائص الصنف/المستودع
using Common.Domain;

public sealed class ExceedItemQty : ValueObject
{
    public bool? Value { get; }
    public ExceedItemQty(bool? value)
    {
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}