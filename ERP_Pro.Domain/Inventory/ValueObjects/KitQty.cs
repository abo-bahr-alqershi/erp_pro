// ValueObject: KitQty
// الجداول: KIT_ITEMS_DETAIL، وغيرها
using Common.Domain;

public sealed class KitQty : ValueObject
{
    public decimal Value { get; }
    public KitQty(decimal value)
    {
        if (value < 0)
            throw new ArgumentException("KitQty cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}