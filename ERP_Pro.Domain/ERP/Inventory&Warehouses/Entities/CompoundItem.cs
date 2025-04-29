public class CompoundItem
{
    /// <summary> كود الصنف الرئيسي المركب. </summary>
    public string? ItemCode { get; private set; }
    /// <summary> وحدة الصنف المركب. </summary>
    public string ItemUnit { get; private set; }
    /// <summary> حجم العبوة المركبة. </summary>
    public int? PackSize { get; private set; }
    /// <summary> كود المكون. </summary>
    public string? ComponentCode { get; private set; }
    /// <summary> اسم المكون. </summary>
    public string? ComponentName { get; private set; }
    /// <summary> كمية المكون. </summary>
    public int? Qty { get; private set; }
    /// <summary> وحدة المكون. </summary>
    public string? ComponentUnit { get; private set; }
    /// <summary> حجم عبوة المكون. </summary>
    public int? ComponentPackSize { get; private set; }
    /// <summary> مكون اختياري (1=نعم). </summary>
    public bool? Optional { get; private set; }
    /// <summary> أقل كمية ممكنة للمكون. </summary>
    public int? MinItemQty { get; private set; }
    /// <summary> أكبر كمية للمكون. </summary>
    public int? MaxItemQty { get; private set; }
    /// <summary> المستخدم الذي أضاف السطر. </summary>
    public int? AddedByUserId { get; private set; }
    /// <summary> تاريخ الإضافة. </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> المستخدم الذي عدل السطر. </summary>
    public int? UpdatedByUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل. </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> عدد مرات التعديل. </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> أولوية التقرير. </summary>
    public long? ReportPriority { get; private set; }
    /// <summary> الجهاز عند الإضافة. </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> الجهاز عند التعديل. </summary>
    public string? UpdatedTerminal { get; private set; }
}