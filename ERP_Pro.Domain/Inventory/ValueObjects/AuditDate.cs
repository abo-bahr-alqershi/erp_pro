// ValueObject: AuditDate
// يستخدم في: InventoryAdjustment, ItemPriceHistory, وغيرها (تاريخ التدقيق)
using Common.Domain;

public sealed class AuditDate : ValueObject
{
    public DateTime Value { get; }
    public AuditDate(DateTime value)
    {
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}