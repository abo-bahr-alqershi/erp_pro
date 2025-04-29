// ValueObject: UseBOE
// الجداول: WAREHOUSE_DETAILS وغيرها (علم خاص باستخدام BOE)
using Common.Domain;

public sealed class UseBOE : ValueObject
{
    public bool Value { get; }
    public UseBOE(bool value)
    {
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}