// ValueObject: VatAmountOther
// الجداول: أعلام وجود ضريبة قيمة مضافة أخرى
using Common.Domain;

public sealed class VatAmountOther : ValueObject
{
    public bool Value { get; }
    public VatAmountOther(bool value)
    {
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}