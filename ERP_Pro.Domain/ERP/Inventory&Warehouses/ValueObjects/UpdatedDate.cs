// ValueObject: UpdatedDate
// يستخدم في: جميع الجداول تقريباً (تاريخ آخر تعديل)
using Common.Domain;

public sealed class UpdatedDate : ValueObject
{
    public DateTime Value { get; }
    public UpdatedDate(DateTime value)
    {
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}