public class ItemPriceHistory
{
    public long? AuditNo { get; private set; }
    public bool? AuditType { get; private set; }
    public short? LevelNo { get; private set; }
    /// <summary> كود الصنف </summary>
    public string? ItemCode { get; private set; }
    /// <summary> وحدة الصنف </summary>
    public string? ItemUnit { get; private set; }
    /// <summary> حجم العبوة </summary>
    public int? PackSize { get; private set; }
    public long? WarehouseCode { get; private set; }
    public long? FromQty { get; private set; }
    public long? ToQty { get; private set; }
    public decimal? ItemPrice { get; private set; }
    /// <summary> السعر السابق </summary>
    public int? PrevItemPrice { get; private set; }
    public int? AddedByUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    public int? UpdatedByUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public int? AuditUserId { get; private set; }
    /// <summary> تاريخ التدقيق </summary>
    public DateTime? AuditDate { get; private set; }
    public long? DocNo { get; private set; }
    /// <summary> تاريخ المستند </summary>
    public DateTime? DocDate { get; private set; }
    public int BranchNo { get; private set; }
    public long? UpdateCount { get; private set; }
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