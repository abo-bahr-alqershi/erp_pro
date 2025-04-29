// ValueObject: ItemCode
// الجداول: IAS_ITM_MST، ITEM_MOVEMENT، ItemBatch، وغيرها

using Common.Domain;

public sealed class ItemCode : ValueObject
{
    public string Value { get; }

    public ItemCode(string value)
    {
        if (string.IsNullOrWhiteSpace(value))
            throw new ArgumentException("ItemCode cannot be empty.");

        Value = value.Trim();
    }

    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}