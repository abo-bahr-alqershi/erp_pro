// ValueObject: GroupCode
// الجداول: IAS_GRP_ITM_LVL، IAS_GRP_ITM_LVL_TREE، وغيرها

using Common.Domain;

public sealed class GroupCode : ValueObject
{
    public string Value { get; }

    public GroupCode(string value)
    {
        if (string.IsNullOrWhiteSpace(value))
            throw new ArgumentException("GroupCode cannot be empty.");

        Value = value.Trim();
    }

    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}