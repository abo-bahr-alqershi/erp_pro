public class AssetAuditItemMaster
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
    /// <summary> تاريخ المستند </summary>
    public DateTime? DocDate { get; private set; }
    /// <summary> كود الحساب </summary>
    public string? AccountCode { get; private set; }
    /// <summary> كود الحساب التفصيلي </summary>
    public string? AccountCodeDetail { get; private set; }
    /// <summary> نوع الحساب التفصيلي </summary>
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
    /// <summary> نسبة العمولة </summary>
    public decimal? CommissionPercent { get; private set; }
    /// <summary> سعر المستند </summary>
    public int? DocRate { get; private set; }
    /// <summary> معدل المخزون </summary>
    public int? StockRate { get; private set; }
    /// <summary> وصف </summary>
    public string? Description { get; private set; }
    /// <summary> رقم مرجعي </summary>
    public string? ReferenceNo { get; private set; }
    /// <summary> رقم النقدية </summary>
    public long? CashNo { get; private set; }
    /// <summary> رقم الشيك </summary>
    public long? ChequeNo { get; private set; }
    /// <summary> كود المستودع </summary>
    public long? WarehouseCode { get; private set; }
    /// <summary> كود مركز التكلفة </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> كود المنطقة </summary>
    public long? RegionCode { get; private set; }
    /// <summary> كود المندوب </summary>
    public string? RepCode { get; private set; }
    /// <summary> رقم الاعتماد المستندي </summary>
    public string? LCNo { get; private set; }
    /// <summary> رقم الحمولة </summary>
    public long? LoadNo { get; private set; }
    /// <summary> تسلسل الحمولة </summary>
    public long? LoadSer { get; private set; }
    /// <summary> رقم المستند السابق </summary>
    public long? FDocNo { get; private set; }
    /// <summary> تسلسل المستند السابق </summary>
    public long? FDocSer { get; private set; }
    /// <summary> سبب الحذف/الإلغاء </summary>
    public string? ReasonDelete { get; private set; }
    /// <summary> تاريخ الاستحقاق </summary>
    public DateTime? DocDueDate { get; private set; }
    /// <summary> ترحيل خارجي </summary>
    public int? ExternalPost { get; private set; }
    /// <summary> أولوية التقرير </summary>
    public long? ReportPriority { get; private set; }
    /// <summary> تم المعالجة </summary>
    public bool? Processed { get; private set; }
    /// <summary> دفع الفاتورة </summary>
    public bool? BillPay { get; private set; }
    /// <summary> نوع الشراء </summary>
    public bool? PurchaseType { get; private set; }
    /// <summary> كود حساب المصروفات </summary>
    public string? ExpenseAccountCode { get; private set; }
    /// <summary> عملة المصروفات </summary>
    public string? ExpenseCurrencyCode { get; private set; }
    /// <summary> مبلغ المصروفات </summary>
    public int? ExpenseAmount { get; private set; }
    /// <summary> سعر المصروفات </summary>
    public int? ExpenseRate { get; private set; }
    /// <summary> عدد مرات التحديث </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> رقم المستخدم </summary>
    public int? UserId { get; private set; }
    /// <summary> تاريخ التدقيق </summary>
    public DateTime? AuditDate { get; private set; }
    /// <summary> المستخدم الذي أضاف </summary>
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> المستخدم الذي رحّل </summary>
    public int? PostedUserId { get; private set; }
    /// <summary> تاريخ الترحيل </summary>
    public DateTime? PostedDate { get; private set; }
    /// <summary> المستخدم الذي ألغى الترحيل </summary>
    public int? UnpostedUserId { get; private set; }
    /// <summary> تاريخ إلغاء الترحيل </summary>
    public DateTime? UnpostedDate { get; private set; }
    /// <summary> اسم الجهاز </summary>
    public string? TerminalName { get; private set; }
    /// <summary> رقم الشركة </summary>
    public short CompanyNo { get; private set; }
    /// <summary> رقم الفرع </summary>
    public int BranchNo { get; private set; }
    /// <summary> سنة الفرع </summary>
    public short? BranchYear { get; private set; }
    /// <summary> مستخدم الفرع </summary>
    public short? BranchUser { get; private set; }
    public ICollection<AssetAuditItemDetail> AssetAuditItemDetails { get; private set; } // Inverse Navigation
}