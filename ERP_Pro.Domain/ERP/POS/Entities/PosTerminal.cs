public class PosTerminal
{
    /// <summary> رقم نقطة البيع/الجهاز </summary>
    public long? TerminalNo { get; private set; }
    /// <summary> اسم عربي لجهاز نقطة البيع </summary>
    public string? TerminalArabicName { get; private set; }
    /// <summary> اسم انجليزي للجهاز </summary>
    public string? TerminalEnglishName { get; private set; }
    /// <summary> رقم نوع الوقود (إن وجد) </summary>
    public int? FuelTypeNo { get; private set; }
    /// <summary> كود المستودع </summary>
    public long? WarehouseCode { get; private set; }
    /// <summary> قراءة أولية (عداد/وقود) </summary>
    public int? PrimaryRead { get; private set; }
    /// <summary> المستخدم الذي أضاف </summary>
    public int AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime AddedDate { get; private set; }
    /// <summary> المستخدم الذي عدل </summary>
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> رقم الفرع </summary>
    public int BranchNo { get; private set; }
    /// <summary> أولوية التقرير </summary>
    public long? ReportPriority { get; private set; }
    /// <summary> عدد مرات التحديث </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> معطل </summary>
    public bool? Inactive { get; private set; }
    /// <summary> تاريخ التعطيل </summary>
    public DateTime? InactiveDate { get; private set; }
    /// <summary> سبب التعطيل </summary>
    public string? InactiveReason { get; private set; }
    /// <summary> المستخدم الذي عطل </summary>
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