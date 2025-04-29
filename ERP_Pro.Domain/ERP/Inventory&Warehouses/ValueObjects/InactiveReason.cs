// ValueObject: InactiveReason
// الجداول: PricingLevel (سبب التعطيل)
using Common.Domain;

public sealed class InactiveReason : ValueObject
{
    public string Value { get; }
    public InactiveReason(string value)
    {
        Value = value?.Trim();
    }
    protected override IEnumerable<object> GetEqualityComponents() { yield return Value; }
}