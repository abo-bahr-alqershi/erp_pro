public class AssetAuditItemOtherDetail
{
    public long? AuditNo { get; private set; }
    public short? AuditType { get; private set; }
    public int? DocType { get; private set; }
    public long? JVType { get; private set; }
    public long? DocNo { get; private set; }
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
    public bool? UseSerialNo { get; private set; }
    public bool? ServiceItem { get; private set; }
    public long? RecordNo { get; private set; }
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
    public short? DiscountType { get; private set; }
    /// <summary> كود الصنف للكمية </summary>
    public string? QtyItemCode { get; private set; }
    public int? DocTypeRef { get; private set; }
    public long? DocJVTypeRef { get; private set; }
    public long? DocNoRef { get; private set; }
    public long? DocSerRef { get; private set; }
    public long? DocSequenceRef { get; private set; }
    /// <summary> اسم الجهاز </summary>
    public string? TerminalName { get; private set; }
    public short CompanyNo { get; private set; }
    public int? BranchNo { get; private set; }
    public short? BranchYear { get; private set; }
    public short? BranchUser { get; private set; }
    public long? UpdateCount { get; private set; }
    public AssetAuditItemOtherMaster AssetAuditItemOtherMaster { get; private set; } // Navigation
}