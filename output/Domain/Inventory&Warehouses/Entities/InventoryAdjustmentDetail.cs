public class InventoryAdjustmentDetail
{
    public short AdjustType { get; private set; }
    public long DocNo { get; private set; }
    public long DocSerial { get; private set; }
    /// <summary> كود الصنف. </summary>
    public string ItemCode { get; private set; }
    public long? WarehouseCode { get; private set; }
    /// <summary> تاريخ انتهاء الدفعة. </summary>
    public DateTime? ExpireDate { get; private set; }
    /// <summary> رقم التشغيلة/الدفعة. </summary>
    public string? BatchNo { get; private set; }
    /// <summary> الباركود المستخدم. </summary>
    public string? Barcode { get; private set; }
    /// <summary> المتوسط المرجح للسعر. </summary>
    public int? WeightedAverage { get; private set; }
    /// <summary> الكمية المتاحة. </summary>
    public int? AvailableQty { get; private set; }
    /// <summary> كمية الزيادة أو النقصان. </summary>
    public int? PlusMinus { get; private set; }
    /// <summary> وحدة الصنف. </summary>
    public string ItemUnit { get; private set; }
    /// <summary> حجم العبوة. </summary>
    public int PackSize { get; private set; }
    /// <summary> كمية العبوة. </summary>
    public int? PackQty { get; private set; }
    public bool? UseSerialNo { get; private set; }
    public long? RecordNo { get; private set; }
    public long DocSequence { get; private set; }
    /// <summary> وصف الصنف. </summary>
    public string? ItemDesc { get; private set; }
    /// <summary> كمية العبوة المدخلة يدويًا. </summary>
    public int? ManualPackQty { get; private set; }
    /// <summary> كمية العبوة المتاحة يدويًا. </summary>
    public int? ManualAvailablePackQty { get; private set; }
    /// <summary> سعر الشراء بالفاتورة. </summary>
    public int? PurchaseInvoicePrice { get; private set; }
    /// <summary> كمية الشراء بالفاتورة. </summary>
    public int? PurchaseInvoiceQty { get; private set; }
    /// <summary> كمية الشراء السابقة بالفاتورة. </summary>
    public int? PreviousInvoiceQty { get; private set; }
    /// <summary> خصم الفاتورة. </summary>
    public int? BillDiscount { get; private set; }
    public short? DocTypeRef { get; private set; }
    public long? DocNoRef { get; private set; }
    public long? DocSerRef { get; private set; }
    /// <summary> كود المورد. </summary>
    public string? VendorCode { get; private set; }
    /// <summary> مركز التكلفة. </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> رقم المشروع. </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> رقم النشاط. </summary>
    public string? ActivityNo { get; private set; }
    /// <summary> كمية الزيادة في التسوية. </summary>
    public int? IncreaseQty { get; private set; }
    /// <summary> تكلفة الزيادة في التسوية. </summary>
    public int? IncreaseCost { get; private set; }
    /// <summary> كمية الرصيد النهائي. </summary>
    public int? BalanceQty { get; private set; }
    /// <summary> التكلفة الحقيقية. </summary>
    public int? RealCost { get; private set; }
    /// <summary> طول العنصر. </summary>
    public int? ItemLength { get; private set; }
    /// <summary> عرض العنصر. </summary>
    public int? ItemWidth { get; private set; }
    /// <summary> ارتفاع العنصر. </summary>
    public int? ItemHeight { get; private set; }
    /// <summary> رقم العنصر الإضافي. </summary>
    public int? ItemNumber { get; private set; }
    /// <summary> كود الترحيل. </summary>
    public string? PostCode { get; private set; }
    /// <summary> كمية الوزن. </summary>
    public int? WeightQty { get; private set; }
    /// <summary> وحدة الوزن. </summary>
    public string? WeightUnit { get; private set; }
    /// <summary> رقم مرجعي إضافي. </summary>
    public int? ArgumentNo { get; private set; }
    public short CompanyNo { get; private set; }
    public int BranchNo { get; private set; }
    public short? BranchYear { get; private set; }
    public short BranchUser { get; private set; }
    public long? UpdateCount { get; private set; }
    /// <summary> تسلسل السطر المرجعي. </summary>
    public int? DocSequenceRef { get; private set; }
    public Project Project { get; private set; } // Navigation
    public InventoryAdjustment InventoryAdjustment { get; private set; } // Navigation
}