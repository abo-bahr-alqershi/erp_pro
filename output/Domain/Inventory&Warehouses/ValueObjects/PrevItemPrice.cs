// ValueObject: PrevItemPrice
// الجداول: ItemPriceHistory (السعر السابق)
using Common.Domain;

public sealed class PrevItemPrice : ValueObject
{
    public decimal? Value { get; }
    public PrevItemPrice(decimal? value)
    {
        if (value.HasValue && value < 0)
            throw new ArgumentException("PrevItemPrice cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents() { yield return Value; }
}