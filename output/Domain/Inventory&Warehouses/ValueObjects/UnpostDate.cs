// ValueObject: UnpostDate
// يستخدم في: InventoryAdjustment, AssembleKitItem, وغيرها (تاريخ إلغاء الترحيل)
using Common.Domain;

public sealed class UnpostDate : ValueObject
{
    public DateTime Value { get; }
    public UnpostDate(DateTime value)
    {
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}