// ValueObject: PrevMaxItemPrice
// الجداول: ItemPriceHistory (الحد الأعلى السابق للسعر)
using Common.Domain;

public sealed class PrevMaxItemPrice : ValueObject
{
    public decimal? Value { get; }
    public PrevMaxItemPrice(decimal? value)
    {
        if (value.HasValue && value < 0)
            throw new ArgumentException("PrevMaxItemPrice cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents() { yield return Value; }
}