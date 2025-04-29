// ValueObject: RecordSq
// يستخدم في: KIT_ITEMS_DETAIL, ASSEMBLE_KIT_ITEMS_DET, وغيرها (رقم فرعي للسطر)
using Common.Domain;

public sealed class RecordSq : ValueObject
{
    public long Value { get; }
    public RecordSq(long value)
    {
        if (value < 0)
            throw new ArgumentException("RecordSq cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}