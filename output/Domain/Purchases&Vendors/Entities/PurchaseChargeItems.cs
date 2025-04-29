public class PurchaseChargeItems
{
    public int? BillType { get; private set; }
    public short? BillDocType { get; private set; }
    public long? BillNo { get; private set; }
    public long BillSerial { get; private set; }
    /// <summary> تاريخ المستند </summary>
    public DateTime? DocumentDate { get; private set; }
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
    public long? WarehouseCode { get; private set; }
    /// <summary> مركز التكلفة </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> رقم المشروع </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> رقم النشاط </summary>
    public string? ActivityNo { get; private set; }
    public long? RecordNo { get; private set; }
    public int? ServiceItemType { get; private set; }
    /// <summary> كود الصنف </summary>
    public string ItemCode { get; private set; }
    /// <summary> وحدة الصنف </summary>
    public string ItemUnit { get; private set; }
    /// <summary> حجم العبوة </summary>
    public int PackSize { get; private set; }
    public bool? BillPY { get; private set; }
    public int? ExternalPost { get; private set; }
    /// <summary> المبلغ لكل وحدة </summary>
    public int? UnitAmount { get; private set; }
    /// <summary> كود الترحيل </summary>
    public string? PostCode { get; private set; }
    public short CompanyNo { get; private set; }
    public int BranchNo { get; private set; }
    public short? BranchYear { get; private set; }
    public short? BranchUser { get; private set; }
    public AccountCurrency AccountCurrency { get; private set; } // Navigation
    public Project Project { get; private set; } // Navigation
    public SalesCharges SalesCharges { get; private set; } // Navigation
}