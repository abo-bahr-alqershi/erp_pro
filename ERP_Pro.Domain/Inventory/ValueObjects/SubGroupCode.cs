// ValueObject: SubGroupCode
// الجداول: IAS_ITM_MST، StockCount، وغيرها

using Common.Domain;

public sealed class SubGroupCode : ValueObject
{
    public string Value { get; }

    public SubGroupCode(string value)
    {
        if (string.IsNullOrWhiteSpace(value))
            throw new ArgumentException("SubGroupCode cannot be empty.");

        Value = value.Trim();
    }

    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}