public class UserTerminal
{
    /// <summary> رقم المستخدم المرتبط بالطرفية أو الجهاز </summary>
    public int? UserId { get; private set; }
    /// <summary> السنة المالية للفرع </summary>
    public short? BranchYear { get; private set; }
    /// <summary> رقم الشركة </summary>
    public short CompanyNo { get; private set; }
    /// <summary> رقم الفرع </summary>
    public int BranchNo { get; private set; }
    /// <summary> اسم الشركة عربي </summary>
    public string CompanyArabicName { get; private set; }
    /// <summary> اسم الشركة إنجليزي </summary>
    public string? CompanyEnglishName { get; private set; }
    /// <summary> وصف الفرع عربي </summary>
    public string BranchArabicDesc { get; private set; }
    /// <summary> وصف الفرع إنجليزي </summary>
    public string? BranchEnglishDesc { get; private set; }
    /// <summary> عنوان الفرع عربي </summary>
    public string? BranchArabicAddress { get; private set; }
    /// <summary> عنوان الفرع إنجليزي </summary>
    public string? BranchEnglishAddress { get; private set; }
    /// <summary> هاتف الفرع عربي </summary>
    public string? BranchArabicTel { get; private set; }
    /// <summary> هاتف الفرع إنجليزي </summary>
    public string? BranchEnglishTel { get; private set; }
    /// <summary> فاكس الفرع عربي </summary>
    public string? BranchArabicFax { get; private set; }
    /// <summary> فاكس الفرع إنجليزي </summary>
    public string? BranchEnglishFax { get; private set; }
    /// <summary> صندوق بريد الفرع عربي </summary>
    public string? BranchArabicBox { get; private set; }
    /// <summary> صندوق بريد الفرع إنجليزي </summary>
    public string? BranchEnglishBox { get; private set; }
    /// <summary> صورة الشركة </summary>
    public string? CompanyImage { get; private set; }
    /// <summary> المستخدم الذي أضاف السطر </summary>
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> المستخدم الذي عدل السطر </summary>
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> مستخدم الفرع </summary>
    public short? BranchUser { get; private set; }
    /// <summary> عدد مرات التحديث </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> أولوية التقرير </summary>
    public long? ReportPriority { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    /// <summary> نوع رأس التقرير </summary>
    public short? ReportHeaderType { get; private set; }
    /// <summary> صورة رأس التقرير (شعار الشركة/الفرع) </summary>
    public byte[] ReportHeaderImage { get; private set; }
    /// <summary> اسم ملف صورة رأس التقرير </summary>
    public string? ReportHeaderImageName { get; private set; }
    /// <summary> اسم ملف صورة رأس التقرير (رمز/اختصار) </summary>
    public string? ReportHeaderImageNameH { get; private set; }
    public User User { get; private set; } // Navigation
}