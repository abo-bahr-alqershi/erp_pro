// ValueObject: PackSize
// الجداول: ItemBatch، ITEM_MOVEMENT، ItemBarcode، وغيرها

using Common.Domain;

public sealed class PackSize : ValueObject
{
    public decimal Value { get; }

    public PackSize(decimal value)
    {
        if (value < 0)
            throw new ArgumentException("PackSize cannot be negative.");
        Value = value;
    }

    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}