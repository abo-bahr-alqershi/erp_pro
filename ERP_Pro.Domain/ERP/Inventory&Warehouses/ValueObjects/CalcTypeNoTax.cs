// ValueObject: CalcTypeNoTax
// الجداول: WAREHOUSE_DETAILS
using Common.Domain;

public sealed class CalcTypeNoTax : ValueObject
{
    public int? Value { get; }
    public CalcTypeNoTax(int? value)
    {
        if (value.HasValue && value < 0)
            throw new ArgumentException("CalcTypeNoTax cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}