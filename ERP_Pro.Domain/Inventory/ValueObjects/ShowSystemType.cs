// ValueObject: ShowSystemType
// الجداول: WAREHOUSE_DETAILS
using Common.Domain;

public sealed class ShowSystemType : ValueObject
{
    public int? Value { get; }
    public ShowSystemType(int? value)
    {
        if (value.HasValue && value < 0)
            throw new ArgumentException("ShowSystemType cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}