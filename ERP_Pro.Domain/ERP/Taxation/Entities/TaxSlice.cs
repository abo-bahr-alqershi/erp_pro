public class TaxSlice
{
    /// <summary> رقم الشريحة الضريبية </summary>
    public int SliceNo { get; private set; }
    /// <summary> اسم الشريحة عربي </summary>
    public string SliceArabicName { get; private set; }
    /// <summary> اسم الشريحة إنجليزي </summary>
    public string? SliceEnglishName { get; private set; }
    /// <summary> نسبة الشريحة </summary>
    public int SlicePercent { get; private set; }
    /// <summary> المستخدم الذي أضاف السطر </summary>
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> المستخدم الذي عدل السطر </summary>
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> أولوية التقرير </summary>
    public int? ReportPriority { get; private set; }
    /// <summary> عدد مرات التحديث </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    /// <summary> شريحة افتراضية (1=نعم) </summary>
    public bool? DefaultFlag { get; private set; }
    /// <summary> معطل (1=نعم) </summary>
    public bool? Inactive { get; private set; }
    /// <summary> المستخدم الذي عطل الشريحة </summary>
    public int? InactiveUserId { get; private set; }
    /// <summary> تاريخ التعطيل </summary>
    public DateTime? InactiveDate { get; private set; }
    /// <summary> سبب التعطيل </summary>
    public string? InactiveReason { get; private set; }
}