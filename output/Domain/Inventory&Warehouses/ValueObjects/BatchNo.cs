// ValueObject: BatchNo
// الجداول: ItemBatch، ItemBarcode، ItemPrice، وغيرها

using Common.Domain;

public sealed class BatchNo : ValueObject
{
    public string Value { get; }

    public BatchNo(string value)
    {
        if (string.IsNullOrWhiteSpace(value))
            throw new ArgumentException("BatchNo cannot be empty.");

        Value = value.Trim();
    }

    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}