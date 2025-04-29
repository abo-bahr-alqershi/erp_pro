// ValueObject: MeasureCode
// يستخدم في: MEASUREMENT، وغيرها
using Common.Domain;

public sealed class MeasureCode : ValueObject
{
    public string Value { get; }
    public MeasureCode(string value)
    {
        if (string.IsNullOrWhiteSpace(value))
            throw new ArgumentException("MeasureCode cannot be empty.");
        Value = value.Trim();
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}