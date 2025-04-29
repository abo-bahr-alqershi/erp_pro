// ValueObject: PrevMinItemPrice
// الجداول: ItemPriceHistory (الحد الأدنى السابق للسعر)
using Common.Domain;

public sealed class PrevMinItemPrice : ValueObject
{
    public decimal? Value { get; }
    public PrevMinItemPrice(decimal? value)
    {
        if (value.HasValue && value < 0)
            throw new ArgumentException("PrevMinItemPrice cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents() { yield return Value; }
}