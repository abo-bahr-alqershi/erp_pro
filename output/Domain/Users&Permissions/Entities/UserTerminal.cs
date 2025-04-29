public class UserTerminal
{
    public int? UserId { get; private set; }
    public short? BranchYear { get; private set; }
    public short CompanyNo { get; private set; }
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
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public short? BranchUser { get; private set; }
    public long? UpdateCount { get; private set; }
    public long? ReportPriority { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public short? ReportHeaderType { get; private set; }
    /// <summary> صورة رأس التقرير (شعار الشركة/الفرع) </summary>
    public byte[] ReportHeaderImage { get; private set; }
    /// <summary> اسم ملف صورة رأس التقرير </summary>
    public string? ReportHeaderImageName { get; private set; }
    /// <summary> اسم ملف صورة رأس التقرير (رمز/اختصار) </summary>
    public string? ReportHeaderImageNameH { get; private set; }
    public User User { get; private set; } // Navigation
}