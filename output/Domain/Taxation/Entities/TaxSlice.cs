public class TaxSlice
{
    public int SliceNo { get; private set; }
    /// <summary> اسم الشريحة عربي </summary>
    public string SliceArabicName { get; private set; }
    /// <summary> اسم الشريحة إنجليزي </summary>
    public string? SliceEnglishName { get; private set; }
    /// <summary> نسبة الشريحة </summary>
    public int SlicePercent { get; private set; }
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public int? ReportPriority { get; private set; }
    public long? UpdateCount { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public bool? DefaultFlag { get; private set; }
    public bool? Inactive { get; private set; }
    public int? InactiveUserId { get; private set; }
    /// <summary> تاريخ التعطيل </summary>
    public DateTime? InactiveDate { get; private set; }
    /// <summary> سبب التعطيل </summary>
    public string? InactiveReason { get; private set; }
}