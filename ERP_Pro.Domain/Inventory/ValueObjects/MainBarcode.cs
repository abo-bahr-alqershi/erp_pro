// ValueObject: MainBarcode
// الجداول: ItemBarcode (علم يدل على أن الباركود رئيسي)
using Common.Domain;

public sealed class MainBarcode : ValueObject
{
    public bool Value { get; }
    public MainBarcode(bool value)
    {
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}