public class AccountGrouping
{
    /// <summary> رقم المجموعة الفريد، يستخدم لتجميع الحسابات في تصنيفات معينة </summary>
    public int? GroupNo { get; private set; }
    /// <summary> اسم المجموعة بالعربي، يظهر في التقارير والقوائم </summary>
    public string? GroupName { get; private set; }
    /// <summary> اسم المجموعة بالإنجليزية، لدعم أنظمة متعددة اللغات </summary>
    public string? GroupEName { get; private set; }
    /// <summary> رقم المستخدم الذي أضاف المجموعة </summary>
    public int? AddedByUserId { get; private set; }
    /// <summary> تاريخ إضافة المجموعة </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> رقم المستخدم الذي عدّل بيانات المجموعة </summary>
    public int? UpdatedByUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل على المجموعة </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> عدد مرات التعديل على بيانات المجموعة </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> أولوية الظهور في التقارير </summary>
    public long? ReportPriority { get; private set; }
    /// <summary> اسم الجهاز الذي أُنشئت منه المجموعة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز الذي تم تعديل المجموعة منه </summary>
    public string? UpdatedTerminal { get; private set; }
    public string ReportName { get; private set; }
    public string? ReportEName { get; private set; }
    public bool? ReportBs { get; private set; }
    /// <summary> رقم المستخدم الذي أضاف المجموعة </summary>
    public int? AddedByUserId { get; private set; }
    /// <summary> تاريخ إضافة المجموعة </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> رقم المستخدم الذي عدّل بيانات المجموعة </summary>
    public int? UpdatedByUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل على المجموعة </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> عدد مرات التعديل على بيانات المجموعة </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> أولوية الظهور في التقارير </summary>
    public long? ReportPriority { get; private set; }
    /// <summary> اسم الجهاز الذي أُنشئت منه المجموعة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز الذي تم تعديل المجموعة منه </summary>
    public string? UpdatedTerminal { get; private set; }
    public ICollection<Account> Accounts { get; private set; } // Inverse Navigation
}