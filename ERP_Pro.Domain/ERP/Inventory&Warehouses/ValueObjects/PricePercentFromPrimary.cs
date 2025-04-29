// ValueObject: PricePercentFromPrimary
// الجداول: IAS_GRP_ITM_LVL (النسبة الافتراضية للسعر من التكلفة الأساسية)
using Common.Domain;

public sealed class PricePercentFromPrimary : ValueObject
{
    public decimal? Value { get; }
    public PricePercentFromPrimary(decimal? value)
    {
        if (value.HasValue && value < 0)
            throw new ArgumentException("PricePercentFromPrimary cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents() { yield return Value; }
}