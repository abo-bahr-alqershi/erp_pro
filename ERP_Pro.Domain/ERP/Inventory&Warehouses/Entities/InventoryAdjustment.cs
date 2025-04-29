public class InventoryAdjustment
{
    /// <summary> نوع المخزون (رئيسي/فرعي/خدمي). </summary>
    public int? StockType { get; private set; }
    /// <summary> نوع التسوية (جرد دوري، مفاجئ، ...). </summary>
    public short? AdjustType { get; private set; }
    /// <summary> رقم مستند التسوية. </summary>
    public long DocNo { get; private set; }
    /// <summary> الرقم التسلسلي للمستند. </summary>
    public long? DocSerial { get; private set; }
    /// <summary> تاريخ المستند. </summary>
    public DateTime? DocDate { get; private set; }
    /// <summary> رقم مرجعي إضافي. </summary>
    public string? RefNo { get; private set; }
    /// <summary> وصف التسوية. </summary>
    public string? StockDesc { get; private set; }
    /// <summary> كود الحساب المحاسبي المرتبط. </summary>
    public string? AccountCode { get; private set; }
    /// <summary> كود المورد. </summary>
    public string? VendorCode { get; private set; }
    /// <summary> رمز العملة. </summary>
    public string? CurrencyCode { get; private set; }
    /// <summary> سعر صرف التسوية. </summary>
    public int? StockAccRate { get; private set; }
    /// <summary> مركز التكلفة. </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> رقم المشروع المرتبط. </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> رقم النشاط. </summary>
    public string? ActivityNo { get; private set; }
    /// <summary> تم ترحيل التسوية (1=نعم). </summary>
    public bool? StockPost { get; private set; }
    /// <summary> أولوية التقرير. </summary>
    public long? ReportPriority { get; private set; }
    /// <summary> تسوية معلقة (1=نعم). </summary>
    public bool? Hung { get; private set; }
    /// <summary> نوع التعبئة (يدوي/آلي). </summary>
    public short? FillType { get; private set; }
    /// <summary> رقم فرع المستند. </summary>
    public int? DocBranchNo { get; private set; }
    /// <summary> مرجع التدقيق. </summary>
    public bool? AuditRef { get; private set; }
    /// <summary> وصف مرجع التدقيق. </summary>
    public string? AuditRefDesc { get; private set; }
    /// <summary> رقم المستخدم لمرجع التدقيق. </summary>
    public int? AuditRefUserId { get; private set; }
    /// <summary> تاريخ مرجع التدقيق. </summary>
    public DateTime? AuditRefDate { get; private set; }
    /// <summary> رقم المستخدم الذي أضاف السطر. </summary>
    public int? AddedByUserId { get; private set; }
    /// <summary> تاريخ الإضافة. </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> المستخدم الذي عدل السطر. </summary>
    public int? UpdatedByUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل. </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> عدد مرات التعديل. </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> رقم المستخدم الذي رحل التسوية. </summary>
    public int? PostUserId { get; private set; }
    /// <summary> تاريخ الترحيل. </summary>
    public DateTime? PostDate { get; private set; }
    /// <summary> رقم المستخدم الذي ألغى الترحيل. </summary>
    public int? UnpostUserId { get; private set; }
    /// <summary> تاريخ إلغاء الترحيل. </summary>
    public DateTime? UnpostDate { get; private set; }
    /// <summary> رقم الشركة. </summary>
    public short CompanyNo { get; private set; }
    /// <summary> رقم الفرع. </summary>
    public int BranchNo { get; private set; }
    /// <summary> السنة المالية للفرع. </summary>
    public short? BranchYear { get; private set; }
    /// <summary> مستخدم الفرع. </summary>
    public short? BranchUser { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة. </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند التعديل. </summary>
    public string? UpdatedTerminal { get; private set; }
    /// <summary> كود تفاصيل الحساب. </summary>
    public string? AccountDtlCode { get; private set; }
    /// <summary> نوع تفاصيل الحساب. </summary>
    public short? AccountDtlType { get; private set; }
    public AccountCurrency AccountCurrency { get; private set; } // Navigation
    public ICollection<InventoryAdjustmentDetail> InventoryAdjustmentDetails { get; private set; } // Inverse Navigation
}