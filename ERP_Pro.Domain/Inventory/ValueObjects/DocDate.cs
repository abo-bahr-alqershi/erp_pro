// ValueObject: DocDate
// يستخدم في: المستندات (ItemMovement, InventoryAdjustment, وغيرها)
using Common.Domain;

public sealed class DocDate : ValueObject
{
    public DateTime Value { get; }
    public DocDate(DateTime value)
    {
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}