// ValueObject: ReportPriority
// الجداول: WAREHOUSE_DETAILS وغيرها كثير
using Common.Domain;

public sealed class ReportPriority : ValueObject
{
    public int Value { get; }
    public ReportPriority(int value)
    {
        if (value < 0)
            throw new ArgumentException("ReportPriority cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}