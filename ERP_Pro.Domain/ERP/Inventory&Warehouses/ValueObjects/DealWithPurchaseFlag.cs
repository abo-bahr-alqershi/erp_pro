// ValueObject: DealWithPurchaseFlag
// الجداول: أعلام التعامل مع المشتريات
using Common.Domain;

public sealed class DealWithPurchaseFlag : ValueObject
{
    public bool Value { get; }
    public DealWithPurchaseFlag(bool value)
    {
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}