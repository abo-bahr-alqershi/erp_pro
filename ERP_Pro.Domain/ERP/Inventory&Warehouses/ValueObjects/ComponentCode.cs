// ValueObject: ComponentCode
// الجداول: CompoundItem، وغيرها

using Common.Domain;

public sealed class ComponentCode : ValueObject
{
    public string Value { get; }

    public ComponentCode(string value)
    {
        if (string.IsNullOrWhiteSpace(value))
            throw new ArgumentException("ComponentCode cannot be empty.");

        Value = value.Trim();
    }

    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}