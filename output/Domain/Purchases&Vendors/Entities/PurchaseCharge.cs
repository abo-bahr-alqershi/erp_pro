public class PurchaseCharge
{
    public int BillType { get; private set; }
    public short BillDocType { get; private set; }
    public long BillNo { get; private set; }
    public long BillSerial { get; private set; }
    /// <summary> تاريخ المستند </summary>
    public DateTime? DocumentDate { get; private set; }
    public short ServiceCode { get; private set; }
    /// <summary> كود الحساب المرتبط </summary>
    public string AccountCode { get; private set; }
    /// <summary> رمز العملة </summary>
    public string CurrencyCode { get; private set; }
    /// <summary> سعر الصرف للحساب </summary>
    public int AccountRate { get; private set; }
    /// <summary> نسبة مئوية مضافة </summary>
    public int? Percent { get; private set; }
    /// <summary> المبلغ </summary>
    public int? Amount { get; private set; }
    public bool? InvoiceItem { get; private set; }
    public long? RecordNo { get; private set; }
    public bool? BillPY { get; private set; }
    public int? ExternalPost { get; private set; }
    /// <summary> مبلغ الضريبة </summary>
    public int? VATAmount { get; private set; }
    /// <summary> نسبة الضريبة </summary>
    public int? VATPercent { get; private set; }
    /// <summary> مبلغ الخدمة </summary>
    public int? ServiceAmount { get; private set; }
    /// <summary> سعر صرف الخدمة </summary>
    public int? ServiceAccountRate { get; private set; }
    /// <summary> عملة الخدمة </summary>
    public string? ServiceCurrency { get; private set; }
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public long? UpdateCount { get; private set; }
    public short CompanyNo { get; private set; }
    public int BranchNo { get; private set; }
    public short? BranchYear { get; private set; }
    public short? BranchUser { get; private set; }
    public AccountCurrency AccountCurrency { get; private set; } // Navigation
    public SalesCharges SalesCharges { get; private set; } // Navigation
}