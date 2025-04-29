// ValueObject: DocSequenceMain
// يستخدم في: KIT_ITEMS_DETAIL, ASSEMBLE_KIT_ITEMS_DET, وغيرها (تسلسل السطر الرئيسي)
using Common.Domain;

public sealed class DocSequenceMain : ValueObject
{
    public long Value { get; }
    public DocSequenceMain(long value)
    {
        if (value < 0)
            throw new ArgumentException("DocSequenceMain cannot be negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}