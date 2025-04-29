// ValueObject: Hung
// الجداول: أعلام تعليق السطر/السند
using Common.Domain;

public sealed class Hung : ValueObject
{
    public bool Value { get; }
    public Hung(bool value)
    {
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}