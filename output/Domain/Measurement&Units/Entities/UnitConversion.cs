public class UnitConversion
{
    public long? ManualMeasureNo { get; private set; }
    /// <summary> كود الوحدة الأساسية (من) </summary>
    public string? ManualMeasureCode { get; private set; }
    /// <summary> كود الوحدة المحولة (إلى) </summary>
    public string? ObservedMeasureCode { get; private set; }
    /// <summary> رقم مرجعي أو معامل التحويل </summary>
    public int? ArgumentNo { get; private set; }
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public long? UpdateCount { get; private set; }
    public long? ReportPriority { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public string? GroupAName { get; private set; }
    public string? GroupEName { get; private set; }
    public bool? AdminUser { get; private set; }
    public bool? RestGrp { get; private set; }
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public long? UpdateCount { get; private set; }
    public long? ReportPriority { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
}