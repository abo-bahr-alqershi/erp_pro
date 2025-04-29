// ValueObject: InactiveDate
// الجداول: PricingLevel (تاريخ التعطيل)
using Common.Domain;

public sealed class InactiveDate : ValueObject
{
    public DateTime? Value { get; }
    public InactiveDate(DateTime? value)
    {
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents() { yield return Value; }
}