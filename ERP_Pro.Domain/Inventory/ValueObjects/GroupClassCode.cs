// ValueObject: GroupClassCode
// الجداول: IAS_ITM_MST، StockCount، وغيرها

using Common.Domain;

public sealed class GroupClassCode : ValueObject
{
    public string Value { get; }

    public GroupClassCode(string value)
    {
        if (string.IsNullOrWhiteSpace(value))
            throw new ArgumentException("GroupClassCode cannot be empty.");

        Value = value.Trim();
    }

    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}