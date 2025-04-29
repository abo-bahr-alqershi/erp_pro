public class InventoryBin
{
    /// <summary> كود الصنف. </summary>
    public string? ItemCode { get; private set; }
    /// <summary> وحدة الصنف. </summary>
    public string? ItemUnit { get; private set; }
    /// <summary> حجم العبوة. </summary>
    public int? PackSize { get; private set; }
    public long? WarehouseCode { get; private set; }
    /// <summary> كود الموقع التخزيني (BIN). </summary>
    public string? BinCode { get; private set; }
    /// <summary> تاريخ انتهاء الدفعة في المكان. </summary>
    public DateTime? ExpireDate { get; private set; }
    /// <summary> رقم التشغيلة/الدفعة بالموقع. </summary>
    public string? BatchNo { get; private set; }
    public int? ExternalPost { get; private set; }
    public int? AddedByUserId { get; private set; }
    /// <summary> تاريخ الإضافة. </summary>
    public DateTime? AddedDate { get; private set; }
    public int? UpdatedByUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل. </summary>
    public DateTime? UpdatedDate { get; private set; }
    public long? UpdateCount { get; private set; }
    public long? ReportPriority { get; private set; }
    /// <summary> الجهاز عند الإضافة. </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> الجهاز عند التعديل. </summary>
    public string? UpdatedTerminal { get; private set; }
    public bool? DefaultFlag { get; private set; }
    public Item Item { get; private set; } // Navigation
    public InventoryBinDetail InventoryBinDetail { get; private set; } // Navigation
}