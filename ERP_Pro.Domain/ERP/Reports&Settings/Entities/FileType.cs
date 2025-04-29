public class FileType
{
    /// <summary> اسم الملف/نوع الملف </summary>
    public string? FileName { get; private set; }
    /// <summary> إصدار المكتبة/التحديث </summary>
    public string? LibVersionUpdate { get; private set; }
    /// <summary> تاريخ التعديل الأخير </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> المستخدم الذي عدل </summary>
    public int? UpdatedUserId { get; private set; }
    /// <summary> جهاز التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    /// <summary> تاريخ الإنشاء </summary>
    public DateTime? CreatedDate { get; private set; }
    /// <summary> تاريخ آخر وصول </summary>
    public DateTime? AccessedDate { get; private set; }
    /// <summary> تاريخ آخر تعديل فعلي </summary>
    public DateTime? ModifiedDate { get; private set; }
    /// <summary> حجم الملف </summary>
    public int? FileSize { get; private set; }
    public DateTime? AdDate { get; private set; }
    public string? AdTrmnlNm { get; private set; }
    public int? FormNo { get; private set; }
    public int? LogCnt { get; private set; }
    public string? LogDesc { get; private set; }
    public string? MsgTxtFxd { get; private set; }
    public string? RprtNm { get; private set; }
    public string? RprtWhr { get; private set; }
    public DateTime? AdDate { get; private set; }
}