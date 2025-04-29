public class UnitDescriptionItemDetail
{
    /// <summary> كود الصنف </summary>
    public string? ItemCode { get; private set; }
    public int? MeasureNo { get; private set; }
    /// <summary> اسم الوحدة عربي </summary>
    public string? MeasureArabicName { get; private set; }
    /// <summary> اسم الوحدة إنجليزي </summary>
    public string? MeasureEnglishName { get; private set; }
    /// <summary> تسلسل المستند </summary>
    public int? DocumentSequence { get; private set; }
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public int? ReportPriority { get; private set; }
    public long? UpdateCount { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public int? MeasureNoReference { get; private set; }
    /// <summary> صورة الوحدة </summary>
    public string? MeasureImage { get; private set; }
    public int? MeasureNo { get; private set; }
    /// <summary> اسم الوحدة عربي </summary>
    public string? MeasureArabicName { get; private set; }
    /// <summary> اسم الوحدة إنجليزي </summary>
    public string? MeasureEnglishName { get; private set; }
    /// <summary> تسلسل المستند </summary>
    public int? DocumentSequence { get; private set; }
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public int? ReportPriority { get; private set; }
    public long? UpdateCount { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public string? MeasurDsc { get; private set; }
    /// <summary> صورة الوحدة </summary>
    public string? MeasureImage { get; private set; }
    public bool? Inactive { get; private set; }
    public UnitDescriptionItemMaster UnitDescriptionItemMaster { get; private set; } // Navigation
}