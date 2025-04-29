// ValueObject: UseBinMovement
// الجداول: WAREHOUSE_DETAILS
using Common.Domain;

public sealed class UseBinMovement : ValueObject
{
    public bool? Value { get; }
    public UseBinMovement(bool? value)
    {
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}