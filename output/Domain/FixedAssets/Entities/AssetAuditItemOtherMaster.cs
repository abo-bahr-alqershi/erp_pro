public class AssetAuditItemOtherMaster
{
    public long? AuditNo { get; private set; }
    public short? AuditType { get; private set; }
    public int? DocType { get; private set; }
    public long? JVType { get; private set; }
    public long? DocNo { get; private set; }
    public long? DocSerial { get; private set; }
    /// <summary> تاريخ المستند </summary>
    public DateTime? DocDate { get; private set; }
    /// <summary> كود الحساب </summary>
    public string? AccountCode { get; private set; }
    /// <summary> كود الحساب التفصيلي </summary>
    public string? AccountCodeDetail { get; private set; }
    public short? AccountDetailType { get; private set; }
    /// <summary> رمز العملة </summary>
    public string? CurrencyCode { get; private set; }
    /// <summary> كود العميل </summary>
    public string? CustomerCode { get; private set; }
    /// <summary> كود المورد </summary>
    public string? VendorCode { get; private set; }
    /// <summary> اسم العميل/المورد </summary>
    public string? CustomerVendorName { get; private set; }
    /// <summary> مبلغ المستند </summary>
    public int? DocumentAmount { get; private set; }
    /// <summary> مبلغ الخصم </summary>
    public int? DiscountAmount { get; private set; }
    /// <summary> مبلغ آخر </summary>
    public int? OtherAmount { get; private set; }
    /// <summary> مبلغ الضريبة </summary>
    public int? VATAmount { get; private set; }
    public decimal? CommissionPercent { get; private set; }
    /// <summary> سعر المستند </summary>
    public int? DocRate { get; private set; }
    /// <summary> معدل المخزون </summary>
    public int? StockRate { get; private set; }
    /// <summary> وصف المستند </summary>
    public string? Description { get; private set; }
    /// <summary> رقم مرجعي </summary>
    public string? ReferenceNo { get; private set; }
    public long? CashNo { get; private set; }
    public long? ChequeNo { get; private set; }
    public long? WarehouseCode { get; private set; }
    /// <summary> كود مركز التكلفة </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> رقم المشروع </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> رقم النشاط </summary>
    public string? ActivityNo { get; private set; }
    public long? RegionCode { get; private set; }
    /// <summary> كود المندوب </summary>
    public string? RepCode { get; private set; }
    public long? HierarchyNo { get; private set; }
    /// <summary> رقم الاعتماد المستندي </summary>
    public string? LCNo { get; private set; }
    /// <summary> سبب الحذف/الإلغاء </summary>
    public string? ReasonDelete { get; private set; }
    /// <summary> تاريخ الاستحقاق </summary>
    public DateTime? DocDueDate { get; private set; }
    public int? ExternalPost { get; private set; }
    public long? ReportPriority { get; private set; }
    public bool? Processed { get; private set; }
    public bool? DocumentPay { get; private set; }
    public bool? PurchaseType { get; private set; }
    /// <summary> جهة الطلب </summary>
    public string? SideRequest { get; private set; }
    /// <summary> تاريخ توفر الطلب </summary>
    public DateTime? RequestAvailableDate { get; private set; }
    public int? DocTypeRef { get; private set; }
    public long? DocJVTypeRef { get; private set; }
    public long? DocNoRef { get; private set; }
    public long? DocSerRef { get; private set; }
    public bool? Approved { get; private set; }
    public int? ApprovedUserId { get; private set; }
    /// <summary> تاريخ الاعتماد </summary>
    public DateTime? ApprovedDate { get; private set; }
    public bool? Inactive { get; private set; }
    public int? InactiveUserId { get; private set; }
    /// <summary> تاريخ التعطيل </summary>
    public DateTime? InactiveDate { get; private set; }
    /// <summary> سبب التعطيل </summary>
    public string? InactiveReason { get; private set; }
    public int? UserId { get; private set; }
    /// <summary> تاريخ التدقيق </summary>
    public DateTime? AuditDate { get; private set; }
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public long? UpdateCount { get; private set; }
    /// <summary> اسم الجهاز </summary>
    public string? TerminalName { get; private set; }
    public short CompanyNo { get; private set; }
    public int BranchNo { get; private set; }
    public short? BranchYear { get; private set; }
    public short? BranchUser { get; private set; }
    public ICollection<AssetAuditItemOtherDetail> AssetAuditItemOtherDetails { get; private set; } // Inverse Navigation
}