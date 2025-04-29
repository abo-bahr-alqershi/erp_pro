public class ItemPriceHistory
{
    /// <summary> رقم السجل التاريخي </summary>
    public long? AuditNo { get; private set; }
    /// <summary> نوع السجل (إضافة/تعديل) </summary>
    public bool? AuditType { get; private set; }
    /// <summary> رقم مستوى التسعير </summary>
    public short? LevelNo { get; private set; }
    /// <summary> كود الصنف </summary>
    public string? ItemCode { get; private set; }
    /// <summary> وحدة الصنف </summary>
    public string? ItemUnit { get; private set; }
    /// <summary> حجم العبوة </summary>
    public int? PackSize { get; private set; }
    /// <summary> كود المستودع </summary>
    public long? WarehouseCode { get; private set; }
    /// <summary> الكمية من </summary>
    public long? FromQty { get; private set; }
    /// <summary> الكمية إلى </summary>
    public long? ToQty { get; private set; }
    /// <summary> سعر الصنف الجديد </summary>
    public decimal? ItemPrice { get; private set; }
    /// <summary> السعر السابق </summary>
    public int? PrevItemPrice { get; private set; }
    /// <summary> المستخدم الذي أضاف السطر </summary>
    public int? AddedByUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> المستخدم الذي عدل السطر </summary>
    public int? UpdatedByUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> المستخدم الذي راجع التعديل </summary>
    public int? AuditUserId { get; private set; }
    /// <summary> تاريخ التدقيق </summary>
    public DateTime? AuditDate { get; private set; }
    /// <summary> رقم المستند </summary>
    public long? DocNo { get; private set; }
    /// <summary> تاريخ المستند </summary>
    public DateTime? DocDate { get; private set; }
    /// <summary> رقم الفرع </summary>
    public int BranchNo { get; private set; }
    /// <summary> عدد مرات التعديل </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> أولوية التقرير </summary>
    public long? ReportPriority { get; private set; }
    /// <summary> الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    /// <summary> تاريخ انتهاء السعر </summary>
    public DateTime ExpireDate { get; private set; }
    /// <summary> رقم الدفعة </summary>
    public string BatchNo { get; private set; }
    /// <summary> الحد الأدنى للسعر الجديد </summary>
    public int? MinItemPrice { get; private set; }
    /// <summary> الحد الأعلى للسعر الجديد </summary>
    public int? MaxItemPrice { get; private set; }
    /// <summary> الحد الأعلى السابق للسعر </summary>
    public int? PrevMaxItemPrice { get; private set; }
    /// <summary> الحد الأدنى السابق للسعر </summary>
    public int? PrevMinItemPrice { get; private set; }
}