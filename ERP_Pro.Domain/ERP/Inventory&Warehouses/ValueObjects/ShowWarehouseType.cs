// ValueObject: ShowWarehouseType
// الجداول: أعلام عرض نوع المستودع
using Common.Domain;

public sealed class ShowWarehouseType : ValueObject
{
    public bool Value { get; }
    public ShowWarehouseType(bool value)
    {
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}