// ValueObject: MaxItemPrice
// الجداول: ItemPrice, ItemPriceHistory (الحد الأعلى للسعر)
using Common.Domain;

public sealed class MaxItemPrice : ValueObject
{
    public decimal? Value { get; }
    public MaxItemPrice(decimal? value)
    {
        if (value.HasValue && value < 0)
            throw new ArgumentException("MaxItemPrice cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents() { yield return Value; }
}