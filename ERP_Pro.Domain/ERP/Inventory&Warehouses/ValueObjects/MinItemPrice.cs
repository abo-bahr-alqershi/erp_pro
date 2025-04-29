// ValueObject: MinItemPrice
// الجداول: ItemPrice, ItemPriceHistory (الحد الأدنى للسعر)
using Common.Domain;

public sealed class MinItemPrice : ValueObject
{
    public decimal? Value { get; }
    public MinItemPrice(decimal? value)
    {
        if (value.HasValue && value < 0)
            throw new ArgumentException("MinItemPrice cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents() { yield return Value; }
}