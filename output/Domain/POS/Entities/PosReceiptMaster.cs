public class PosReceiptMaster
{
    public long? ReceiptNo { get; private set; }
    public long? ReceiptSerial { get; private set; }
    public long? CashNo { get; private set; }
    /// <summary> رمز العملة </summary>
    public string? CurrencyCode { get; private set; }
    /// <summary> كود الحساب </summary>
    public string? AccountCode { get; private set; }
    /// <summary> كود حساب الإيراد </summary>
    public string? IncomeAccountCode { get; private set; }
    /// <summary> سعر الصرف </summary>
    public int? CurrencyRate { get; private set; }
    public long? CollectorNo { get; private set; }
    public long? EmployeeNo { get; private set; }
    /// <summary> رقم مرجعي </summary>
    public string? ReferenceNo { get; private set; }
    /// <summary> وصف الفاتورة </summary>
    public string? ReceiptDesc { get; private set; }
    public string? Field1 { get; private set; }
    public string? Field2 { get; private set; }
    public string? Field3 { get; private set; }
    public string? Field4 { get; private set; }
    public string? Field5 { get; private set; }
    public string? Field6 { get; private set; }
    public string? Field7 { get; private set; }
    public string? Field8 { get; private set; }
    public string? Field9 { get; private set; }
    public string? Field10 { get; private set; }
    /// <summary> مبلغ النقد </summary>
    public int? CashAmount { get; private set; }
    /// <summary> مبلغ الائتمان </summary>
    public int? CreditAmount { get; private set; }
    /// <summary> مبلغ الكوبونات </summary>
    public int? CouponAmount { get; private set; }
    /// <summary> إجمالي الفاتورة </summary>
    public int? BillAmount { get; private set; }
    /// <summary> مبلغ النقص </summary>
    public int? DecreaseAmount { get; private set; }
    /// <summary> مبلغ الزيادة </summary>
    public int? IncreaseAmount { get; private set; }
    public long? WarehouseCode { get; private set; }
    public bool? StandBy { get; private set; }
    /// <summary> مبلغ الخصم </summary>
    public int? DiscountAmount { get; private set; }
    /// <summary> مبلغ الضريبة </summary>
    public int? VATAmount { get; private set; }
    public int? TaxCalcTypeNo { get; private set; }
    /// <summary> مبلغ تحويل المخزون </summary>
    public int? WarehouseTransferAmount { get; private set; }
    public int AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime AddedDate { get; private set; }
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public long? ReportPriority { get; private set; }
    public long? UpdateCount { get; private set; }
    public short CompanyNo { get; private set; }
    public int BranchNo { get; private set; }
    public short? BranchYear { get; private set; }
    public short? BranchUser { get; private set; }
    /// <summary> تاريخ الفاتورة </summary>
    public DateTime? ReceiptDate { get; private set; }
    public bool? AuditRef { get; private set; }
    /// <summary> وصف مرجع التدقيق </summary>
    public string? AuditRefDesc { get; private set; }
    public int? AuditRefUserId { get; private set; }
    /// <summary> تاريخ التدقيق </summary>
    public DateTime? AuditRefDate { get; private set; }
    public int? SaleInvoiceType { get; private set; }
    /// <summary> كود تفصيلي لحساب الإيراد </summary>
    public string? IncomeAccountCodeDetail { get; private set; }
    public short? IncomeAccountDetailType { get; private set; }
    public bool? DocPosted { get; private set; }
    public int? ProductNo { get; private set; }
    /// <summary> مركز التكلفة </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> رقم المشروع </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> رقم النشاط </summary>
    public string? ActivityNo { get; private set; }
    /// <summary> كود المندوب </summary>
    public string? RepCode { get; private set; }
    /// <summary> الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    /// <summary> مبلغ الصادر </summary>
    public int? OutAmount { get; private set; }
    public CashInHandDetail CashInHandDetail { get; private set; } // Navigation
    public ICollection<PosCoupon> PosCoupons { get; private set; } // Inverse Navigation
    public ICollection<PosCreditBill> PosCreditBills { get; private set; } // Inverse Navigation
    public ICollection<PosReceiptDetail> PosReceiptDetails { get; private set; } // Inverse Navigation
}