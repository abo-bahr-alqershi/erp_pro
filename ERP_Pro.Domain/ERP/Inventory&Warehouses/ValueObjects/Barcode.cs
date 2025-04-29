// ValueObject: Barcode
// الجداول: ItemBarcode، وغيرها
using Common.Domain;

public sealed class Barcode : ValueObject
{
    public string Value { get; }
    public Barcode(string value)
    {
        Value = value?.Trim();
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}