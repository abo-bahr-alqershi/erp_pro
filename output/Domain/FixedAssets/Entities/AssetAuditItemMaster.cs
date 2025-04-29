public class AssetAuditItemMaster
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
    /// <summary> المبلغ </summary>
    public int? Amount { get; private set; }
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
    /// <summary> وصف </summary>
    public string? Description { get; private set; }
    /// <summary> رقم مرجعي </summary>
    public string? ReferenceNo { get; private set; }
    public long? CashNo { get; private set; }
    public long? ChequeNo { get; private set; }
    public long? WarehouseCode { get; private set; }
    /// <summary> كود مركز التكلفة </summary>
    public string? CostCenterCode { get; private set; }
    public long? RegionCode { get; private set; }
    /// <summary> كود المندوب </summary>
    public string? RepCode { get; private set; }
    /// <summary> رقم الاعتماد المستندي </summary>
    public string? LCNo { get; private set; }
    public long? LoadNo { get; private set; }
    public long? LoadSer { get; private set; }
    public long? FDocNo { get; private set; }
    public long? FDocSer { get; private set; }
    /// <summary> سبب الحذف/الإلغاء </summary>
    public string? ReasonDelete { get; private set; }
    /// <summary> تاريخ الاستحقاق </summary>
    public DateTime? DocDueDate { get; private set; }
    public int? ExternalPost { get; private set; }
    public long? ReportPriority { get; private set; }
    public bool? Processed { get; private set; }
    public bool? BillPay { get; private set; }
    public bool? PurchaseType { get; private set; }
    /// <summary> كود حساب المصروفات </summary>
    public string? ExpenseAccountCode { get; private set; }
    /// <summary> عملة المصروفات </summary>
    public string? ExpenseCurrencyCode { get; private set; }
    /// <summary> مبلغ المصروفات </summary>
    public int? ExpenseAmount { get; private set; }
    /// <summary> سعر المصروفات </summary>
    public int? ExpenseRate { get; private set; }
    public long? UpdateCount { get; private set; }
    public int? UserId { get; private set; }
    /// <summary> تاريخ التدقيق </summary>
    public DateTime? AuditDate { get; private set; }
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    public int? PostedUserId { get; private set; }
    /// <summary> تاريخ الترحيل </summary>
    public DateTime? PostedDate { get; private set; }
    public int? UnpostedUserId { get; private set; }
    /// <summary> تاريخ إلغاء الترحيل </summary>
    public DateTime? UnpostedDate { get; private set; }
    /// <summary> اسم الجهاز </summary>
    public string? TerminalName { get; private set; }
    public short CompanyNo { get; private set; }
    public int BranchNo { get; private set; }
    public short? BranchYear { get; private set; }
    public short? BranchUser { get; private set; }
    public ICollection<AssetAuditItemDetail> AssetAuditItemDetails { get; private set; } // Inverse Navigation
}