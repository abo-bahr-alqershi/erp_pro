public class SalesReturnDetail
{
    public long ReturnNo { get; private set; }
    public long ReturnSerial { get; private set; }
    public long ReturnBillNo { get; private set; }
    public long ReturnBillSerial { get; private set; }
    public int? SReturnType { get; private set; }
    /// <summary> كود الصنف </summary>
    public string ItemCode { get; private set; }
    /// <summary> كمية الصنف </summary>
    public int? ItemQty { get; private set; }
    /// <summary> كمية مجانية </summary>
    public int? FreeQty { get; private set; }
    /// <summary> وحدة الصنف </summary>
    public string ItemUnit { get; private set; }
    /// <summary> حجم العبوة </summary>
    public int PackSize { get; private set; }
    /// <summary> كمية العبوة </summary>
    public int? PackQty { get; private set; }
    /// <summary> سعر الصنف </summary>
    public int? ItemPrice { get; private set; }
    /// <summary> تكلفة المخزون للصنف </summary>
    public int? StockCost { get; private set; }
    public long WarehouseCode { get; private set; }
    /// <summary> مركز التكلفة </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> رقم المشروع </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> رقم النشاط </summary>
    public string? ActivityNo { get; private set; }
    /// <summary> تاريخ انتهاء الدفعة </summary>
    public DateTime? ExpireDate { get; private set; }
    /// <summary> رقم التشغيلة/الدفعة </summary>
    public string? BatchNo { get; private set; }
    public bool? UseSerialNo { get; private set; }
    /// <summary> مبلغ الخصم </summary>
    public int? DiscountAmount { get; private set; }
    public decimal? DiscountPercent { get; private set; }
    public long? RecordNo { get; private set; }
    /// <summary> مبلغ الضريبة </summary>
    public int? VATAmount { get; private set; }
    /// <summary> نسبة الضريبة </summary>
    public int? VATPercent { get; private set; }
    public long? ReturnRecordNo { get; private set; }
    /// <summary> باركود الصنف </summary>
    public string? Barcode { get; private set; }
    public long? BillNo { get; private set; }
    public long? BillSerial { get; private set; }
    public long? OutNo { get; private set; }
    public long? OutSerial { get; private set; }
    public long? SalesInvoiceRecordNo { get; private set; }
    public long DocSequence { get; private set; }
    public long? DocSequenceSI { get; private set; }
    public bool? UseAttachment { get; private set; }
    public long? ReceiveAttachment { get; private set; }
    /// <summary> طول الصنف </summary>
    public int? ItemLength { get; private set; }
    /// <summary> عرض الصنف </summary>
    public int? ItemWidth { get; private set; }
    /// <summary> ارتفاع الصنف </summary>
    public int? ItemHeight { get; private set; }
    /// <summary> رقم العنصر التسلسلي </summary>
    public int? ItemNumber { get; private set; }
    /// <summary> وحدة الوزن </summary>
    public string? WeightUnit { get; private set; }
    /// <summary> كمية الوزن </summary>
    public int? WeightQty { get; private set; }
    /// <summary> كود الترحيل </summary>
    public string? PostCode { get; private set; }
    /// <summary> وصف الصنف </summary>
    public string? ItemDesc { get; private set; }
    public short CompanyNo { get; private set; }
    public int BranchNo { get; private set; }
    public short? BranchYear { get; private set; }
    public short? BranchUser { get; private set; }
    /// <summary> رقم مرجعي خاص </summary>
    public int? ArgumentNo { get; private set; }
    public long? UpdateCount { get; private set; }
    public int? ExternalPost { get; private set; }
    public Item Item { get; private set; } // Navigation
    public Project Project { get; private set; } // Navigation
    public SalesReturn SalesReturn { get; private set; } // Navigation
    public Warehouse Warehouse { get; private set; } // Navigation
}