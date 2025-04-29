// ValueObject: Serial
// يستخدم في: ItemMovement، وغيرها (مثلاً: الرقم التسلسلي للعنصر)
using Common.Domain;

public sealed class Serial : ValueObject
{
    public long Value { get; }
    public Serial(long value)
    {
        if (value < 0)
            throw new ArgumentException("Serial cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}