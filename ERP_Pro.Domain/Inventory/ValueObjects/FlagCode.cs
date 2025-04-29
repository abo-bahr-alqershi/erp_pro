// ValueObject: FlagCode
// يستخدم في: IAS_ITM_LVL_MEASURE, وغيرها
using Common.Domain;

public sealed class FlagCode : ValueObject
{
    public string Value { get; }
    public FlagCode(string value)
    {
        if (string.IsNullOrWhiteSpace(value))
            throw new ArgumentException("FlagCode cannot be empty.");
        Value = value.Trim();
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}