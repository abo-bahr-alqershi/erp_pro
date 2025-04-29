// ValueObject: ArgumentNo
// الجداول: تفاصيل حركة الصنف، سندات
using Common.Domain;

public sealed class ArgumentNo : ValueObject
{
    public long? Value { get; }
    public ArgumentNo(long? value)
    {
        if (value.HasValue && value < 0)
            throw new ArgumentException("ArgumentNo cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}