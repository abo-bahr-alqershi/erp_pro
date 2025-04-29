// ValueObject: ConnectedBranchNo
// الجداول: WAREHOUSE_DETAILS
using Common.Domain;

public sealed class ConnectedBranchNo : ValueObject
{
    public int? Value { get; }
    public ConnectedBranchNo(int? value)
    {
        if (value.HasValue && value < 0)
            throw new ArgumentException("ConnectedBranchNo cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}