// ValueObject: DecNo
// الجداول: PricingLevel (عدد الكسور العشرية المقبولة في السعر)
using Common.Domain;

public sealed class DecNo : ValueObject
{
    public int? Value { get; }
    public DecNo(int? value)
    {
        if (value.HasValue && value < 0)
            throw new ArgumentException("DecNo cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents() { yield return Value; }
}