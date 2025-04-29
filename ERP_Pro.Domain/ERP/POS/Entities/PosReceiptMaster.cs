public class PosReceiptMaster
{
    /// <summary> رقم الفاتورة </summary>
    public long? ReceiptNo { get; private set; }
    /// <summary> تسلسل الفاتورة </summary>
    public long? ReceiptSerial { get; private set; }
    /// <summary> رقم النقدية </summary>
    public long? CashNo { get; private set; }
    /// <summary> رمز العملة </summary>
    public string? CurrencyCode { get; private set; }
    /// <summary> كود الحساب </summary>
    public string? AccountCode { get; private set; }
    /// <summary> كود حساب الإيراد </summary>
    public string? IncomeAccountCode { get; private set; }
    /// <summary> سعر الصرف </summary>
    public int? CurrencyRate { get; private set; }
    /// <summary> رقم المحصل </summary>
    public long? CollectorNo { get; private set; }
    /// <summary> رقم الموظف </summary>
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
    /// <summary> رقم المستودع </summary>
    public long? WarehouseCode { get; private set; }
    /// <summary> حالة الانتظار </summary>
    public bool? StandBy { get; private set; }
    /// <summary> مبلغ الخصم </summary>
    public int? DiscountAmount { get; private set; }
    /// <summary> مبلغ الضريبة </summary>
    public int? VATAmount { get; private set; }
    /// <summary> نوع احتساب الضريبة </summary>
    public int? TaxCalcTypeNo { get; private set; }
    /// <summary> مبلغ تحويل المخزون </summary>
    public int? WarehouseTransferAmount { get; private set; }
    /// <summary> المستخدم الذي أضاف </summary>
    public int AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime AddedDate { get; private set; }
    /// <summary> المستخدم الذي عدل </summary>
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> أولوية التقرير </summary>
    public long? ReportPriority { get; private set; }
    /// <summary> عدد مرات التحديث </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> رقم الشركة </summary>
    public short CompanyNo { get; private set; }
    /// <summary> رقم الفرع </summary>
    public int BranchNo { get; private set; }
    /// <summary> سنة الفرع </summary>
    public short? BranchYear { get; private set; }
    /// <summary> مستخدم الفرع </summary>
    public short? BranchUser { get; private set; }
    /// <summary> تاريخ الفاتورة </summary>
    public DateTime? ReceiptDate { get; private set; }
    /// <summary> مرجع تدقيق </summary>
    public bool? AuditRef { get; private set; }
    /// <summary> وصف مرجع التدقيق </summary>
    public string? AuditRefDesc { get; private set; }
    /// <summary> المستخدم المسؤول عن التدقيق </summary>
    public int? AuditRefUserId { get; private set; }
    /// <summary> تاريخ التدقيق </summary>
    public DateTime? AuditRefDate { get; private set; }
    /// <summary> نوع فاتورة البيع </summary>
    public int? SaleInvoiceType { get; private set; }
    /// <summary> كود تفصيلي لحساب الإيراد </summary>
    public string? IncomeAccountCodeDetail { get; private set; }
    /// <summary> نوع الحساب التفصيلي للإيراد </summary>
    public short? IncomeAccountDetailType { get; private set; }
    /// <summary> تم الترحيل </summary>
    public bool? DocPosted { get; private set; }
    /// <summary> رقم المنتج </summary>
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