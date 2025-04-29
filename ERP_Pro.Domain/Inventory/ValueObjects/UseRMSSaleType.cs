// ValueObject: UseRMSSaleType
// الجداول: إعدادات أو خصائص الصنف/المستودع
using Common.Domain;

public sealed class UseRMSSaleType : ValueObject
{
    public bool? Value { get; }
    public UseRMSSaleType(bool? value)
    {
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}