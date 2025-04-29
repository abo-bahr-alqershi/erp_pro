// ValueObject: ItemLength
// الجداول: تفاصيل الصنف
using Common.Domain;

public sealed class ItemLength : ValueObject
{
    public decimal? Value { get; }
    public ItemLength(decimal? value)
    {
        if (value.HasValue && value < 0)
            throw new ArgumentException("ItemLength cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}