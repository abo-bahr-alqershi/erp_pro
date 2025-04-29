// ValueObject: VatAmount
// الجداول: ItemMovement (مبلغ ضريبة القيمة المضافة)
using Common.Domain;

public sealed class VatAmount : ValueObject
{
    public decimal? Value { get; }
    public VatAmount(decimal? value)
    {
        if (value.HasValue && value < 0)
            throw new ArgumentException("VatAmount cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents() { yield return Value; }
}