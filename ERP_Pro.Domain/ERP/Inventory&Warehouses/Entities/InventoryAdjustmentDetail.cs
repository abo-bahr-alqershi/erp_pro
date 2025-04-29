public class InventoryAdjustmentDetail
{
    /// <summary> نوع التسوية. </summary>
    public short AdjustType { get; private set; }
    /// <summary> رقم مستند التسوية. </summary>
    public long DocNo { get; private set; }
    /// <summary> الرقم التسلسلي للمستند. </summary>
    public long DocSerial { get; private set; }
    /// <summary> كود الصنف. </summary>
    public string ItemCode { get; private set; }
    /// <summary> كود المستودع. </summary>
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
    /// <summary> علم استخدام الرقم التسلسلي. </summary>
    public bool? UseSerialNo { get; private set; }
    /// <summary> رقم السطر الداخلي. </summary>
    public long? RecordNo { get; private set; }
    /// <summary> تسلسل السطر بالمستند. </summary>
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
    /// <summary> نوع المستند المرجعي. </summary>
    public short? DocTypeRef { get; private set; }
    /// <summary> رقم المستند المرجعي. </summary>
    public long? DocNoRef { get; private set; }
    /// <summary> الرقم التسلسلي للمستند المرجعي. </summary>
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
    /// <summary> رقم الشركة. </summary>
    public short CompanyNo { get; private set; }
    /// <summary> رقم الفرع. </summary>
    public int BranchNo { get; private set; }
    /// <summary> السنة المالية للفرع. </summary>
    public short? BranchYear { get; private set; }
    /// <summary> مستخدم الفرع. </summary>
    public short BranchUser { get; private set; }
    /// <summary> عدد مرات التعديل. </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> تسلسل السطر المرجعي. </summary>
    public int? DocSequenceRef { get; private set; }
    public Project Project { get; private set; } // Navigation
    public InventoryAdjustment InventoryAdjustment { get; private set; } // Navigation
}