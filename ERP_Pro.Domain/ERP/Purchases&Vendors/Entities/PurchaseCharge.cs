public class PurchaseCharge
{
    /// <summary> نوع الفاتورة </summary>
    public int BillType { get; private set; }
    /// <summary> نوع مستند الفاتورة </summary>
    public short BillDocType { get; private set; }
    /// <summary> رقم الفاتورة </summary>
    public long BillNo { get; private set; }
    /// <summary> الرقم التسلسلي للفاتورة </summary>
    public long BillSerial { get; private set; }
    /// <summary> تاريخ المستند </summary>
    public DateTime? DocumentDate { get; private set; }
    /// <summary> كود الخدمة/المصاريف </summary>
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
    /// <summary> عنصر فاتورة (1=نعم) </summary>
    public bool? InvoiceItem { get; private set; }
    /// <summary> رقم السطر الداخلي </summary>
    public long? RecordNo { get; private set; }
    /// <summary> نوع الفاتورة (تجميع/مفرد) </summary>
    public bool? BillPY { get; private set; }
    /// <summary> تم الترحيل خارجيًا </summary>
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
    /// <summary> رقم الشركة </summary>
    public short CompanyNo { get; private set; }
    /// <summary> رقم الفرع </summary>
    public int BranchNo { get; private set; }
    /// <summary> السنة المالية للفرع </summary>
    public short? BranchYear { get; private set; }
    /// <summary> مستخدم الفرع </summary>
    public short? BranchUser { get; private set; }
    public AccountCurrency AccountCurrency { get; private set; } // Navigation
    public SalesCharges SalesCharges { get; private set; } // Navigation
}