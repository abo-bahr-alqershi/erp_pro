public class InventoryBinDetail
{
    /// <summary> كود الموقع التخزيني داخل المستودع (BIN). </summary>
    public string? BinCode { get; private set; }
    /// <summary> كود المستودع المرتبط بالـ BIN. </summary>
    public long? WarehouseCode { get; private set; }
    /// <summary> اسم الـ BIN بالعربي. </summary>
    public string BinAName { get; private set; }
    /// <summary> اسم الـ BIN بالإنجليزي. </summary>
    public string? BinEName { get; private set; }
    /// <summary> علم الترحيل الخارجي. </summary>
    public int? ExternalPost { get; private set; }
    /// <summary> المستخدم الذي أضاف السطر. </summary>
    public int? AddedByUserId { get; private set; }
    /// <summary> تاريخ الإضافة. </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> المستخدم الذي عدل السطر. </summary>
    public int? UpdatedByUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل. </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> أولوية التقرير. </summary>
    public int? ReportPriority { get; private set; }
    /// <summary> عدد مرات التعديل. </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> الجهاز عند الإضافة. </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> الجهاز عند التعديل. </summary>
    public string? UpdatedTerminal { get; private set; }
    /// <summary> سعة الموقع أو عدد الوحدات الممكنة. </summary>
    public int? CPM { get; private set; }
    /// <summary> الوزن المسموح للـ BIN. </summary>
    public int? Weight { get; private set; }
    /// <summary> علم الموقع الافتراضي (1=نعم). </summary>
    public bool? DefaultFlag { get; private set; }
    public Warehouse Warehouse { get; private set; } // Navigation
    public ICollection<InventoryBin> InventoryBins { get; private set; } // Inverse Navigation
}