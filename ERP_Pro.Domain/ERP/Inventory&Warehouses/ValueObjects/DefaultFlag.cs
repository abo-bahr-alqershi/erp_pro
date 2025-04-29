// ValueObject: DefaultFlag
// الجداول: تستخدم كعلم افتراضي في عدة جداول مثل InventoryBinDetail وغيرها
using Common.Domain;

public sealed class DefaultFlag : ValueObject
{
    public bool Value { get; }
    public DefaultFlag(bool value)
    {
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}