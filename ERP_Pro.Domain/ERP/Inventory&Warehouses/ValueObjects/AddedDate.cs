// ValueObject: AddedDate
// يستخدم في: جميع الجداول تقريباً (تاريخ الإضافة)
using Common.Domain;

public sealed class AddedDate : ValueObject
{
    public DateTime Value { get; }
    public AddedDate(DateTime value)
    {
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}