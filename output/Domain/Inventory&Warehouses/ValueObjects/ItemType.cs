// ValueObject: ItemType
// الجداول: IAS_ITM_MST، StockCount، وغيرها
using Common.Domain;

public sealed class ItemType : ValueObject
{
    public int Value { get; }
    public ItemType(int value)
    {
        if (value < 0)
            throw new ArgumentException("ItemType cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}