// ValueObject: ItemHeight
// الجداول: تفاصيل الصنف
using Common.Domain;

public sealed class ItemHeight : ValueObject
{
    public decimal? Value { get; }
    public ItemHeight(decimal? value)
    {
        if (value.HasValue && value < 0)
            throw new ArgumentException("ItemHeight cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}