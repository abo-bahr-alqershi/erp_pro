public class SupplierClass
{
    public short? ClassCode { get; private set; }
    /// <summary> اسم التصنيف عربي </summary>
    public string ClassArabicName { get; private set; }
    /// <summary> اسم التصنيف إنجليزي </summary>
    public string? ClassEnglishName { get; private set; }
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
    public string? ACy { get; private set; }
    public bool? Inactive { get; private set; }
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public long? UpdateCount { get; private set; }
    public int? MaxLmtAmtPr { get; private set; }
    public int? MaxLmtAmtPo { get; private set; }
    public bool? CurDflt { get; private set; }
}