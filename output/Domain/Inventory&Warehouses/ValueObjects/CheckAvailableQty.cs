// ValueObject: CheckAvailableQty
// الجداول: WAREHOUSE_DETAILS وغيرها (علم يدل على تفعيل التحقق من الكمية المتوفرة)
using Common.Domain;

public sealed class CheckAvailableQty : ValueObject
{
    public bool Value { get; }
    public CheckAvailableQty(bool value)
    {
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}