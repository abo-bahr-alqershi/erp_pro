public class AccountType
{
    public int? AccountType { get; private set; }
    /// <summary> اسم نوع الحساب بالعربي </summary>
    public string? AccountTypeName { get; private set; }
    /// <summary> اسم نوع الحساب بالإنجليزي </summary>
    public string? AccountTypeEName { get; private set; }
    public bool? AffectedByTrans { get; private set; }
    public int? AddedByUserId { get; private set; }
    /// <summary> تاريخ إضافة نوع الحساب </summary>
    public DateTime? AddedDate { get; private set; }
    public int? UpdatedByUserId { get; private set; }
    /// <summary> تاريخ التعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public long? UpdateCount { get; private set; }
    public long? ReportPriority { get; private set; }
    /// <summary> اسم الجهاز عند إضافة نوع الحساب </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند تعديل نوع الحساب </summary>
    public string? UpdatedTerminal { get; private set; }
    public ICollection<Account> Accounts { get; private set; } // Inverse Navigation
}