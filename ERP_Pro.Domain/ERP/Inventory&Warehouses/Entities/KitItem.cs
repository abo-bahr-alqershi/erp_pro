public class KitItem
{
    /// <summary> رقم تعريف الكيت. </summary>
    public string? KitItemNo { get; private set; }
    /// <summary> كود الصنف. </summary>
    public string? ItemCode { get; private set; }
    /// <summary> وحدة الصنف. </summary>
    public string ItemUnit { get; private set; }
    /// <summary> حجم العبوة. </summary>
    public int PackSize { get; private set; }
    /// <summary> كمية العنصر في الكيت. </summary>
    public int? ItemQty { get; private set; }
    /// <summary> كمية العبوة في الكيت. </summary>
    public int? PackQty { get; private set; }
    /// <summary> نسبة تكلفة العنصر من الكيت. </summary>
    public int? PercentCostFromKit { get; private set; }
    /// <summary> أقل كمية ممكنة للعنصر في الكيت. </summary>
    public int? MinItemQty { get; private set; }
    /// <summary> أكبر كمية. </summary>
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
    /// <summary> تحقق الكمية في نظام RMS. </summary>
    public bool? CheckAvailableQtyInRMS { get; private set; }
    /// <summary> ملاحظات. </summary>
    public string? Note { get; private set; }
    /// <summary> نوع البيع في الـ RMS. </summary>
    public string? UseRMSSaleType { get; private set; }
    /// <summary> السماح بتجاوز الكمية. </summary>
    public bool? ExceedItemQty { get; private set; }
    /// <summary> السماح بحذف العنصر من الكيت. </summary>
    public bool? AllowDeleteItem { get; private set; }
    public Item Item { get; private set; } // Navigation
}