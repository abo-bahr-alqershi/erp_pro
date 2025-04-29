// ValueObject: ItemPrice
// الجداول: ItemPrice, ItemPriceHistory, وغيرها (سعر الصنف)
using Common.Domain;

public sealed class ItemPrice : ValueObject
{
    public decimal Value { get; }
    public ItemPrice(decimal value)
    {
        if (value < 0)
            throw new ArgumentException("ItemPrice cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents() { yield return Value; }
}