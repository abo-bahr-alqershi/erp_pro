// ValueObject: ExpireDate
// يستخدم في: الجداول التي تتعامل مع الدفعات/الباركود/الأسعار/تواريخ انتهاء الصلاحية
using Common.Domain;

public sealed class ExpireDate : ValueObject
{
    public DateTime Value { get; }
    public ExpireDate(DateTime value)
    {
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}