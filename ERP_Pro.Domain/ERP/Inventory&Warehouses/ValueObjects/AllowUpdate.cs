// ValueObject: AllowUpdate
// الجداول: MEASUREMENT وغيرها (علم السماح بالتعديل)
using Common.Domain;

public sealed class AllowUpdate : ValueObject
{
    public bool Value { get; }
    public AllowUpdate(bool value)
    {
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}