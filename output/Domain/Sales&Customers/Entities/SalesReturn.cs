public class SalesReturn
{
    public long ReturnNo { get; private set; }
    public long? ReturnSerial { get; private set; }
    public short ReturnBillDocType { get; private set; }
    public long ReturnBillNo { get; private set; }
    public long ReturnBillSerial { get; private set; }
    /// <summary> تاريخ المرتجع </summary>
    public DateTime? ReturnDate { get; private set; }
    public int? SReturnType { get; private set; }
    /// <summary> رمز العملة </summary>
    public string CurrencyCode { get; private set; }
    /// <summary> سعر الصرف </summary>
    public int? AccountRate { get; private set; }
    /// <summary> سعر المخزون </summary>
    public int? StockRate { get; private set; }
    /// <summary> كود العميل </summary>
    public string? CustomerCode { get; private set; }
    /// <summary> اسم العميل </summary>
    public string? CustomerName { get; private set; }
    /// <summary> كود الحساب المحاسبي </summary>
    public string AccountCode { get; private set; }
    public bool? ReturnPost { get; private set; }
    public long? WarehouseCode { get; private set; }
    /// <summary> رقم مرجعي إضافي </summary>
    public string? ReferenceNo { get; private set; }
    /// <summary> مركز التكلفة </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> رقم المشروع </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> رقم النشاط </summary>
    public string? ActivityNo { get; private set; }
    public long? CashNo { get; private set; }
    /// <summary> ملاحظات المرتجع </summary>
    public string? Description { get; private set; }
    public long? ReportPriority { get; private set; }
    public short? AttachCount { get; private set; }
    public bool? ReturnType { get; private set; }
    public long? BillSerial { get; private set; }
    public long? BillNo { get; private set; }
    public long? RegionCode { get; private set; }
    public int? DocBranchNo { get; private set; }
    public int? ExternalPost { get; private set; }
    /// <summary> مبلغ المرتجع </summary>
    public int? ReturnAmount { get; private set; }
    public bool? StandBy { get; private set; }
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
    public bool? AuditRef { get; private set; }
    /// <summary> وصف مرجع التدقيق </summary>
    public string? AuditRefDesc { get; private set; }
    public int? AuditRefUserId { get; private set; }
    /// <summary> تاريخ مرجع التدقيق </summary>
    public DateTime? AuditRefDate { get; private set; }
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public long? UpdateCount { get; private set; }
    public int? PostUserId { get; private set; }
    /// <summary> تاريخ الترحيل </summary>
    public DateTime? PostDate { get; private set; }
    public int? UnpostUserId { get; private set; }
    /// <summary> تاريخ إلغاء الترحيل </summary>
    public DateTime? UnpostDate { get; private set; }
    public short CompanyNo { get; private set; }
    public int BranchNo { get; private set; }
    public short? BranchYear { get; private set; }
    public short? BranchUser { get; private set; }
    /// <summary> الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public bool? ReturnBillType { get; private set; }
    /// <summary> تاريخ الإضافة (بالساعة) </summary>
    public DateTime? AddedDateClock { get; private set; }
    public AccountCurrency AccountCurrency { get; private set; } // Navigation
    public Region Region { get; private set; } // Navigation
    public Warehouse Warehouse { get; private set; } // Navigation
    public ICollection<SalesReturnDetail> SalesReturnDetails { get; private set; } // Inverse Navigation
}