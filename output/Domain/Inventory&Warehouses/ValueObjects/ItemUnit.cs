// ValueObject: ItemUnit
// الجداول: ItemBatch، ITEM_MOVEMENT، ItemBarcode، وغيرها

using Common.Domain;

public sealed class ItemUnit : ValueObject
{
    public string Value { get; }

    public ItemUnit(string value)
    {
        if (string.IsNullOrWhiteSpace(value))
            throw new ArgumentException("ItemUnit cannot be empty.");

        Value = value.Trim();
    }

    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}