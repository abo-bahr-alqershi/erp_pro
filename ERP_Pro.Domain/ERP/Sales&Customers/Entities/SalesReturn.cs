public class SalesReturn
{
    /// <summary> رقم مرتجع البيع الرئيسي </summary>
    public long ReturnNo { get; private set; }
    /// <summary> الرقم التسلسلي للمرتجع </summary>
    public long? ReturnSerial { get; private set; }
    /// <summary> نوع فاتورة المرتجع </summary>
    public short ReturnBillDocType { get; private set; }
    /// <summary> رقم فاتورة المرتجع </summary>
    public long ReturnBillNo { get; private set; }
    /// <summary> الرقم التسلسلي لفاتورة المرتجع </summary>
    public long ReturnBillSerial { get; private set; }
    /// <summary> تاريخ المرتجع </summary>
    public DateTime? ReturnDate { get; private set; }
    /// <summary> نوع المرتجع (مرتجع بيع/خدمة...) </summary>
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
    /// <summary> تم ترحيل المرتجع (1=نعم) </summary>
    public bool? ReturnPost { get; private set; }
    /// <summary> كود المستودع </summary>
    public long? WarehouseCode { get; private set; }
    /// <summary> رقم مرجعي إضافي </summary>
    public string? ReferenceNo { get; private set; }
    /// <summary> مركز التكلفة </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> رقم المشروع </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> رقم النشاط </summary>
    public string? ActivityNo { get; private set; }
    /// <summary> رقم الكاشير </summary>
    public long? CashNo { get; private set; }
    /// <summary> ملاحظات المرتجع </summary>
    public string? Description { get; private set; }
    /// <summary> أولوية التقرير </summary>
    public long? ReportPriority { get; private set; }
    /// <summary> عدد المرفقات </summary>
    public short? AttachCount { get; private set; }
    /// <summary> نوع المرتجع </summary>
    public bool? ReturnType { get; private set; }
    /// <summary> الرقم التسلسلي للفاتورة المرتبطة </summary>
    public long? BillSerial { get; private set; }
    /// <summary> رقم الفاتورة المرتبطة </summary>
    public long? BillNo { get; private set; }
    /// <summary> كود المنطقة </summary>
    public long? RegionCode { get; private set; }
    /// <summary> رقم فرع المستند </summary>
    public int? DocBranchNo { get; private set; }
    /// <summary> تم الترحيل خارجيًا </summary>
    public int? ExternalPost { get; private set; }
    /// <summary> مبلغ المرتجع </summary>
    public int? ReturnAmount { get; private set; }
    /// <summary> قيد الانتظار </summary>
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
    /// <summary> مرجع التدقيق </summary>
    public bool? AuditRef { get; private set; }
    /// <summary> وصف مرجع التدقيق </summary>
    public string? AuditRefDesc { get; private set; }
    /// <summary> المستخدم لمرجع التدقيق </summary>
    public int? AuditRefUserId { get; private set; }
    /// <summary> تاريخ مرجع التدقيق </summary>
    public DateTime? AuditRefDate { get; private set; }
    /// <summary> المستخدم الذي أضاف السطر </summary>
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> المستخدم الذي عدل السطر </summary>
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> عدد مرات التحديث </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> مستخدم الترحيل </summary>
    public int? PostUserId { get; private set; }
    /// <summary> تاريخ الترحيل </summary>
    public DateTime? PostDate { get; private set; }
    /// <summary> مستخدم إلغاء الترحيل </summary>
    public int? UnpostUserId { get; private set; }
    /// <summary> تاريخ إلغاء الترحيل </summary>
    public DateTime? UnpostDate { get; private set; }
    /// <summary> رقم الشركة </summary>
    public short CompanyNo { get; private set; }
    /// <summary> رقم الفرع </summary>
    public int BranchNo { get; private set; }
    /// <summary> السنة المالية للفرع </summary>
    public short? BranchYear { get; private set; }
    /// <summary> مستخدم الفرع </summary>
    public short? BranchUser { get; private set; }
    /// <summary> الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    /// <summary> نوع فاتورة المرتجع </summary>
    public bool? ReturnBillType { get; private set; }
    /// <summary> تاريخ الإضافة (بالساعة) </summary>
    public DateTime? AddedDateClock { get; private set; }
    public AccountCurrency AccountCurrency { get; private set; } // Navigation
    public Region Region { get; private set; } // Navigation
    public Warehouse Warehouse { get; private set; } // Navigation
    public ICollection<SalesReturnDetail> SalesReturnDetails { get; private set; } // Inverse Navigation
}