// ValueObject: PostDate
// يستخدم في: InventoryAdjustment, AssembleKitItem, وغيرها (تاريخ الترحيل)
using Common.Domain;

public sealed class PostDate : ValueObject
{
    public DateTime Value { get; }
    public PostDate(DateTime value)
    {
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}