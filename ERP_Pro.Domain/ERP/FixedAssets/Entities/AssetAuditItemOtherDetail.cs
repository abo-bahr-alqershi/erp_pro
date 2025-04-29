public class AssetAuditItemOtherDetail
{
    /// <summary> رقم التدقيق </summary>
    public long? AuditNo { get; private set; }
    /// <summary> نوع التدقيق </summary>
    public short? AuditType { get; private set; }
    /// <summary> نوع المستند </summary>
    public int? DocType { get; private set; }
    /// <summary> نوع القيد </summary>
    public long? JVType { get; private set; }
    /// <summary> رقم المستند </summary>
    public long? DocNo { get; private set; }
    /// <summary> تسلسل المستند </summary>
    public long? DocSerial { get; private set; }
    /// <summary> كود الصنف/الأصل </summary>
    public string? ItemCode { get; private set; }
    /// <summary> الكمية </summary>
    public int? ItemQty { get; private set; }
    /// <summary> الكمية المجانية </summary>
    public int? FreeQty { get; private set; }
    /// <summary> وحدة الصنف </summary>
    public string? ItemUnit { get; private set; }
    /// <summary> حجم العبوة </summary>
    public int? PackSize { get; private set; }
    /// <summary> كمية العبوة </summary>
    public int? PackQty { get; private set; }
    /// <summary> سعر الصنف </summary>
    public int? ItemPrice { get; private set; }
    /// <summary> تكلفة المخزون </summary>
    public int? StockCost { get; private set; }
    /// <summary> كمية التدفق </summary>
    public int? FlowQty { get; private set; }
    /// <summary> كمية التدفق المجانية </summary>
    public int? FlowFreeQty { get; private set; }
    /// <summary> كود المستودع </summary>
    public long? WarehouseCode { get; private set; }
    /// <summary> كود مركز التكلفة </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> رقم المشروع </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> رقم النشاط </summary>
    public string? ActivityNo { get; private set; }
    /// <summary> تاريخ انتهاء الصلاحية </summary>
    public DateTime? ExpireDate { get; private set; }
    /// <summary> رقم الدفعة </summary>
    public string? BatchNo { get; private set; }
    /// <summary> مبلغ الخصم </summary>
    public int? DiscountAmount { get; private set; }
    /// <summary> مبلغ الضريبة </summary>
    public int? VATAmount { get; private set; }
    /// <summary> مبلغ آخر </summary>
    public int? OtherAmount { get; private set; }
    /// <summary> استخدام الرقم التسلسلي </summary>
    public bool? UseSerialNo { get; private set; }
    /// <summary> صنف خدمي </summary>
    public bool? ServiceItem { get; private set; }
    /// <summary> رقم السطر </summary>
    public long? RecordNo { get; private set; }
    /// <summary> تسلسل المستند </summary>
    public long? DocSequence { get; private set; }
    /// <summary> وصف الصنف/الأصل </summary>
    public string? ItemDescription { get; private set; }
    /// <summary> باركود </summary>
    public string? Barcode { get; private set; }
    /// <summary> كمية من </summary>
    public int? FromQty { get; private set; }
    /// <summary> كمية إلى </summary>
    public int? ToQty { get; private set; }
    /// <summary> مبلغ من </summary>
    public int? FromAmount { get; private set; }
    /// <summary> مبلغ إلى </summary>
    public int? ToAmount { get; private set; }
    /// <summary> نوع الخصم </summary>
    public short? DiscountType { get; private set; }
    /// <summary> كود الصنف للكمية </summary>
    public string? QtyItemCode { get; private set; }
    /// <summary> نوع المستند المرجعي </summary>
    public int? DocTypeRef { get; private set; }
    /// <summary> نوع القيد المرجعي </summary>
    public long? DocJVTypeRef { get; private set; }
    /// <summary> رقم المستند المرجعي </summary>
    public long? DocNoRef { get; private set; }
    /// <summary> تسلسل المستند المرجعي </summary>
    public long? DocSerRef { get; private set; }
    /// <summary> تسلسل المستند المرجعي </summary>
    public long? DocSequenceRef { get; private set; }
    /// <summary> اسم الجهاز </summary>
    public string? TerminalName { get; private set; }
    /// <summary> رقم الشركة </summary>
    public short CompanyNo { get; private set; }
    /// <summary> رقم الفرع </summary>
    public int? BranchNo { get; private set; }
    /// <summary> سنة الفرع </summary>
    public short? BranchYear { get; private set; }
    /// <summary> مستخدم الفرع </summary>
    public short? BranchUser { get; private set; }
    /// <summary> عدد مرات التحديث </summary>
    public long? UpdateCount { get; private set; }
    public AssetAuditItemOtherMaster AssetAuditItemOtherMaster { get; private set; } // Navigation
}