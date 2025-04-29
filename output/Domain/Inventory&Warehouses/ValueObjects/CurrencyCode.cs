// ValueObject: CurrencyCode
// الجداول: PricingLevel، InventoryAdjustment، وغيرها

using Common.Domain;

public sealed class CurrencyCode : ValueObject
{
    public string Value { get; }

    public CurrencyCode(string value)
    {
        if (string.IsNullOrWhiteSpace(value))
            throw new ArgumentException("CurrencyCode cannot be empty.");

        Value = value.Trim();
    }

    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}