// ValueObject: BinCode
// الجداول: InventoryBinDetail، InventoryBin

using Common.Domain;

public sealed class BinCode : ValueObject
{
    public string Value { get; }

    public BinCode(string value)
    {
        if (string.IsNullOrWhiteSpace(value))
            throw new ArgumentException("BinCode cannot be empty.");

        Value = value.Trim();
    }

    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}