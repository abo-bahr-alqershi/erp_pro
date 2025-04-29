public class SalesReturnDetail
{
    /// <summary> رقم مرتجع البيع </summary>
    public long ReturnNo { get; private set; }
    /// <summary> الرقم التسلسلي للمرتجع </summary>
    public long ReturnSerial { get; private set; }
    /// <summary> رقم فاتورة المرتجع </summary>
    public long ReturnBillNo { get; private set; }
    /// <summary> الرقم التسلسلي لفاتورة المرتجع </summary>
    public long ReturnBillSerial { get; private set; }
    /// <summary> نوع المرتجع (مرتجع بيع/خدمة...) </summary>
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
    /// <summary> كود المستودع </summary>
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
    /// <summary> علم استخدام الرقم التسلسلي </summary>
    public bool? UseSerialNo { get; private set; }
    /// <summary> مبلغ الخصم </summary>
    public int? DiscountAmount { get; private set; }
    /// <summary> نسبة الخصم </summary>
    public decimal? DiscountPercent { get; private set; }
    /// <summary> رقم السطر الداخلي </summary>
    public long? RecordNo { get; private set; }
    /// <summary> مبلغ الضريبة </summary>
    public int? VATAmount { get; private set; }
    /// <summary> نسبة الضريبة </summary>
    public int? VATPercent { get; private set; }
    /// <summary> رقم السطر المرجعي المرتجع </summary>
    public long? ReturnRecordNo { get; private set; }
    /// <summary> باركود الصنف </summary>
    public string? Barcode { get; private set; }
    /// <summary> رقم الفاتورة المرتبطة </summary>
    public long? BillNo { get; private set; }
    /// <summary> الرقم التسلسلي للفاتورة المرتبطة </summary>
    public long? BillSerial { get; private set; }
    /// <summary> رقم مستند الصرف المرتبط </summary>
    public long? OutNo { get; private set; }
    /// <summary> الرقم التسلسلي للصرف المرتبط </summary>
    public long? OutSerial { get; private set; }
    /// <summary> رقم سطر الفاتورة المرتبط </summary>
    public long? SalesInvoiceRecordNo { get; private set; }
    /// <summary> تسلسل السطر في المرتجع </summary>
    public long DocSequence { get; private set; }
    /// <summary> تسلسل السطر في الفاتورة المرتبطة </summary>
    public long? DocSequenceSI { get; private set; }
    /// <summary> استخدام مرفق للصنف </summary>
    public bool? UseAttachment { get; private set; }
    /// <summary> عدد المرفقات </summary>
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
    /// <summary> رقم الشركة </summary>
    public short CompanyNo { get; private set; }
    /// <summary> رقم الفرع </summary>
    public int BranchNo { get; private set; }
    /// <summary> السنة المالية للفرع </summary>
    public short? BranchYear { get; private set; }
    /// <summary> مستخدم الفرع </summary>
    public short? BranchUser { get; private set; }
    /// <summary> رقم مرجعي خاص </summary>
    public int? ArgumentNo { get; private set; }
    /// <summary> عدد مرات التعديل </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> تم الترحيل خارجيًا </summary>
    public int? ExternalPost { get; private set; }
    public Item Item { get; private set; } // Navigation
    public Project Project { get; private set; } // Navigation
    public SalesReturn SalesReturn { get; private set; } // Navigation
    public Warehouse Warehouse { get; private set; } // Navigation
}