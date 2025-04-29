public class ProjectGroup
{
    /// <summary> رقم المجموعة </summary>
    public int? GroupNo { get; private set; }
    /// <summary> اسم المجموعة عربي </summary>
    public string? GroupArabicName { get; private set; }
    /// <summary> اسم المجموعة إنجليزي </summary>
    public string? GroupEnglishName { get; private set; }
    /// <summary> المستخدم الذي أضاف السطر </summary>
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> المستخدم الذي عدل السطر </summary>
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> عدد مرات التحديث </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> أولوية التقرير </summary>
    public long? ReportPriority { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public string? PrmLNm { get; private set; }
    public string? PrmFNm { get; private set; }
    public short? CntryNo { get; private set; }
    public long? CityNo { get; private set; }
    public long? RCode { get; private set; }
    public string? PrmPhone { get; private set; }
    public string? PrmMobile { get; private set; }
    public string? PrmBox { get; private set; }
    public string? PrmFax { get; private set; }
    public string? PrmAddress { get; private set; }
    public string? RepCode { get; private set; }
    public string? PrmNote { get; private set; }
    public long? RouteNo { get; private set; }
    public long? Sortinroute { get; private set; }
    public bool? Inactive { get; private set; }
    public DateTime? InactiveDate { get; private set; }
    public string? InactiveRes { get; private set; }
    public string? Field1 { get; private set; }
    public string? Field2 { get; private set; }
    public string? Field3 { get; private set; }
    public string? Field4 { get; private set; }
    public string? Field5 { get; private set; }
    public string? Field6 { get; private set; }
    public string? Field7 { get; private set; }
    public string? Field8 { get; private set; }
    public string? Field9 { get; private set; }
    public string? Field10 { get; private set; }
    public string? SecretKey { get; private set; }
    public long? BankNo { get; private set; }
    public long? WCode { get; private set; }
    public long? CashNo { get; private set; }
    public string? GrpCode { get; private set; }
    public string? SmanPass { get; private set; }
    public bool? UseInvDts { get; private set; }
    /// <summary> المستخدم الذي أضاف السطر </summary>
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> المستخدم الذي عدل السطر </summary>
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> عدد مرات التحديث </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> أولوية التقرير </summary>
    public long? ReportPriority { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public bool? ConnSpSman { get; private set; }
    public ICollection<Project> Projects { get; private set; } // Inverse Navigation
}