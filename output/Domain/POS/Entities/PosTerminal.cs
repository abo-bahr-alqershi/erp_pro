public class PosTerminal
{
    public long? TerminalNo { get; private set; }
    /// <summary> اسم عربي لجهاز نقطة البيع </summary>
    public string? TerminalArabicName { get; private set; }
    /// <summary> اسم انجليزي للجهاز </summary>
    public string? TerminalEnglishName { get; private set; }
    public int? FuelTypeNo { get; private set; }
    public long? WarehouseCode { get; private set; }
    /// <summary> قراءة أولية (عداد/وقود) </summary>
    public int? PrimaryRead { get; private set; }
    public int AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime AddedDate { get; private set; }
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public int BranchNo { get; private set; }
    public long? ReportPriority { get; private set; }
    public long? UpdateCount { get; private set; }
    public bool? Inactive { get; private set; }
    /// <summary> تاريخ التعطيل </summary>
    public DateTime? InactiveDate { get; private set; }
    /// <summary> سبب التعطيل </summary>
    public string? InactiveReason { get; private set; }
    public int? InactiveUserId { get; private set; }
    /// <summary> كود نقطة البيع/الجهاز </summary>
    public string? TerminalCode { get; private set; }
    /// <summary> مركز التكلفة </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> رقم المشروع </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> رقم النشاط </summary>
    public string? ActivityNo { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
}