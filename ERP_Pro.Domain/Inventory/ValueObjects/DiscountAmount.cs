// ValueObject: DiscountAmount
// الجداول: ItemMovement (مبلغ الخصم على الحركة)
using Common.Domain;

public sealed class DiscountAmount : ValueObject
{
    public decimal? Value { get; }
    public DiscountAmount(decimal? value)
    {
        if (value.HasValue && value < 0)
            throw new ArgumentException("DiscountAmount cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents() { yield return Value; }
}