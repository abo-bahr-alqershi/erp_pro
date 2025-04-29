// ValueObject: ItemWidth
// الجداول: تفاصيل الصنف
using Common.Domain;

public sealed class ItemWidth : ValueObject
{
    public decimal? Value { get; }
    public ItemWidth(decimal? value)
    {
        if (value.HasValue && value < 0)
            throw new ArgumentException("ItemWidth cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}