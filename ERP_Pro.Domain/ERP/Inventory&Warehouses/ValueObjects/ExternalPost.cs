// ValueObject: ExternalPost
// الجداول: InventoryBinDetail وغيرها (علم يدل على أن الترحيل خارجي)
using Common.Domain;

public sealed class ExternalPost : ValueObject
{
    public bool Value { get; }
    public ExternalPost(bool value)
    {
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}