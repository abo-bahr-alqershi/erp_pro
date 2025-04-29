public class InventoryBinDetail
{
    /// <summary> كود الموقع التخزيني داخل المستودع (BIN). </summary>
    public string? BinCode { get; private set; }
    public long? WarehouseCode { get; private set; }
    /// <summary> اسم الـ BIN بالعربي. </summary>
    public string BinAName { get; private set; }
    /// <summary> اسم الـ BIN بالإنجليزي. </summary>
    public string? BinEName { get; private set; }
    public int? ExternalPost { get; private set; }
    public int? AddedByUserId { get; private set; }
    /// <summary> تاريخ الإضافة. </summary>
    public DateTime? AddedDate { get; private set; }
    public int? UpdatedByUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل. </summary>
    public DateTime? UpdatedDate { get; private set; }
    public int? ReportPriority { get; private set; }
    public long? UpdateCount { get; private set; }
    /// <summary> الجهاز عند الإضافة. </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> الجهاز عند التعديل. </summary>
    public string? UpdatedTerminal { get; private set; }
    /// <summary> سعة الموقع أو عدد الوحدات الممكنة. </summary>
    public int? CPM { get; private set; }
    /// <summary> الوزن المسموح للـ BIN. </summary>
    public int? Weight { get; private set; }
    public bool? DefaultFlag { get; private set; }
    public Warehouse Warehouse { get; private set; } // Navigation
    public ICollection<InventoryBin> InventoryBins { get; private set; } // Inverse Navigation
}