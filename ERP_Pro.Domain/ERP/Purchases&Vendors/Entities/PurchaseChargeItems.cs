public class PurchaseChargeItems
{
    /// <summary> نوع الفاتورة </summary>
    public int? BillType { get; private set; }
    /// <summary> نوع مستند الفاتورة </summary>
    public short? BillDocType { get; private set; }
    /// <summary> رقم الفاتورة </summary>
    public long? BillNo { get; private set; }
    /// <summary> الرقم التسلسلي للفاتورة </summary>
    public long BillSerial { get; private set; }
    /// <summary> تاريخ المستند </summary>
    public DateTime? DocumentDate { get; private set; }
    /// <summary> كود الخدمة/المصاريف </summary>
    public short? ServiceCode { get; private set; }
    /// <summary> كود الحساب المرتبط </summary>
    public string? AccountCode { get; private set; }
    /// <summary> رمز العملة </summary>
    public string? CurrencyCode { get; private set; }
    /// <summary> سعر الصرف للحساب </summary>
    public int? AccountRate { get; private set; }
    /// <summary> نسبة مئوية مضافة </summary>
    public int? Percent { get; private set; }
    /// <summary> المبلغ </summary>
    public int? Amount { get; private set; }
    /// <summary> كود المستودع </summary>
    public long? WarehouseCode { get; private set; }
    /// <summary> مركز التكلفة </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> رقم المشروع </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> رقم النشاط </summary>
    public string? ActivityNo { get; private set; }
    /// <summary> رقم السطر الداخلي </summary>
    public long? RecordNo { get; private set; }
    /// <summary> نوع عنصر الخدمة </summary>
    public int? ServiceItemType { get; private set; }
    /// <summary> كود الصنف </summary>
    public string ItemCode { get; private set; }
    /// <summary> وحدة الصنف </summary>
    public string ItemUnit { get; private set; }
    /// <summary> حجم العبوة </summary>
    public int PackSize { get; private set; }
    /// <summary> نوع الفاتورة (تجميع/مفرد) </summary>
    public bool? BillPY { get; private set; }
    /// <summary> تم الترحيل خارجيًا </summary>
    public int? ExternalPost { get; private set; }
    /// <summary> المبلغ لكل وحدة </summary>
    public int? UnitAmount { get; private set; }
    /// <summary> كود الترحيل </summary>
    public string? PostCode { get; private set; }
    /// <summary> رقم الشركة </summary>
    public short CompanyNo { get; private set; }
    /// <summary> رقم الفرع </summary>
    public int BranchNo { get; private set; }
    /// <summary> السنة المالية للفرع </summary>
    public short? BranchYear { get; private set; }
    /// <summary> مستخدم الفرع </summary>
    public short? BranchUser { get; private set; }
    public AccountCurrency AccountCurrency { get; private set; } // Navigation
    public Project Project { get; private set; } // Navigation
    public SalesCharges SalesCharges { get; private set; } // Navigation
}