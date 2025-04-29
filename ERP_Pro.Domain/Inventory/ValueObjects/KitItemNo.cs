// ValueObject: KitItemNo
// يستخدم في: KIT_ITEMS، KIT_ITEMS_DETAIL، وغيرها
using Common.Domain;

public sealed class KitItemNo : ValueObject
{
    public string Value { get; }
    public KitItemNo(string value)
    {
        if (string.IsNullOrWhiteSpace(value))
            throw new ArgumentException("KitItemNo cannot be empty.");
        Value = value.Trim();
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}