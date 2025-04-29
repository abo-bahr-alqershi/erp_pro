// ValueObject: ImportXLS
// الجداول: ItemPrice وغيرها (علم الاستيراد من ملف إكسل)
using Common.Domain;

public sealed class ImportXLS : ValueObject
{
    public bool Value { get; }
    public ImportXLS(bool value)
    {
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}