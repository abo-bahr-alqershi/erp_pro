// ValueObject: OutGRSerial
// الجداول: مستندات المخزون وحركات الصرف والمستودعات
using Common.Domain;

public sealed class OutGRSerial : ValueObject
{
    public long? Value { get; }
    public OutGRSerial(long? value)
    {
        if (value.HasValue && value < 0)
            throw new ArgumentException("OutGRSerial cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}