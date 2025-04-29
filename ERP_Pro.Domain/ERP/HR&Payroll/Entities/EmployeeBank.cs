public class EmployeeBank
{
    /// <summary> رقم الموظف </summary>
    public long? EmployeeNo { get; private set; }
    /// <summary> رقم البنك </summary>
    public long? BankNo { get; private set; }
    /// <summary> رقم فرع البنك </summary>
    public long? BankBranchNo { get; private set; }
    /// <summary> نوع الحساب البنكي </summary>
    public short? BankAccountType { get; private set; }
    /// <summary> كود الحساب البنكي </summary>
    public string? BankAccountCode { get; private set; }
    /// <summary> علم خاص بالراتب (1=حساب الراتب) </summary>
    public bool? SalaryFlag { get; private set; }
    /// <summary> معطل </summary>
    public bool? Inactive { get; private set; }
    /// <summary> سبب التعطيل </summary>
    public string? InactiveReason { get; private set; }
    /// <summary> تاريخ التعطيل </summary>
    public DateTime? InactiveDate { get; private set; }
    /// <summary> رقم المستخدم الذي عطل </summary>
    public long? InactiveUserId { get; private set; }
    /// <summary> المستخدم الذي أضاف </summary>
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime AddedDate { get; private set; }
    /// <summary> المستخدم الذي عدل </summary>
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> عدد مرات التحديث </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> أولوية التقرير </summary>
    public long? ReportPriority { get; private set; }
    public Employee Employee { get; private set; } // Navigation
}