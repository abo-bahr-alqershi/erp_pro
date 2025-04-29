public class AccountType
{
    /// <summary> رقم نوع الحساب (أصل، التزام، ...الخ) </summary>
    public int? AccountType { get; private set; }
    /// <summary> اسم نوع الحساب بالعربي </summary>
    public string? AccountTypeName { get; private set; }
    /// <summary> اسم نوع الحساب بالإنجليزي </summary>
    public string? AccountTypeEName { get; private set; }
    /// <summary> علم لتحديد إذا كان الحساب يتأثر بالحركات </summary>
    public bool? AffectedByTrans { get; private set; }
    /// <summary> رقم المستخدم الذي أضاف نوع الحساب </summary>
    public int? AddedByUserId { get; private set; }
    /// <summary> تاريخ إضافة نوع الحساب </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> رقم المستخدم الذي عدّل نوع الحساب </summary>
    public int? UpdatedByUserId { get; private set; }
    /// <summary> تاريخ التعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> عدد مرات التعديل </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> أولوية ظهور نوع الحساب </summary>
    public long? ReportPriority { get; private set; }
    /// <summary> اسم الجهاز عند إضافة نوع الحساب </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند تعديل نوع الحساب </summary>
    public string? UpdatedTerminal { get; private set; }
    public ICollection<Account> Accounts { get; private set; } // Inverse Navigation
}