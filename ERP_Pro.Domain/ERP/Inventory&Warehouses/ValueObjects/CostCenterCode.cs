// ValueObject: CostCenterCode
// الجداول: WAREHOUSE_DETAILS, InventoryAdjustment, وغيرها
using Common.Domain;

public sealed class CostCenterCode : ValueObject
{
    public string Value { get; }
    public CostCenterCode(string value)
    {
        Value = value?.Trim();
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}