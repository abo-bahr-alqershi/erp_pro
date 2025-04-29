// ValueObject: TransferAccountCode
// الجداول: WAREHOUSE_DETAILS
using Common.Domain;

public sealed class TransferAccountCode : ValueObject
{
    public string Value { get; }
    public TransferAccountCode(string value)
    {
        Value = value?.Trim();
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}