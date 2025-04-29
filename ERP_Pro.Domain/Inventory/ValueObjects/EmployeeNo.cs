// ValueObject: EmployeeNo
// الجداول: تفاصيل حركة الصنف، سندات (حقل الموظف)
using Common.Domain;

public sealed class EmployeeNo : ValueObject
{
    public string Value { get; }
    public EmployeeNo(string value)
    {
        Value = value?.Trim();
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}