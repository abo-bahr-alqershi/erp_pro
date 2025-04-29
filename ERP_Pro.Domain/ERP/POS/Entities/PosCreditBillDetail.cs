public class PosCreditBillDetail
{
    /// <summary> رقم الفاتورة الائتمانية </summary>
    public long BillNo { get; private set; }
    /// <summary> تسلسل الفاتورة </summary>
    public long ReceiptSerial { get; private set; }
    /// <summary> رقم الفاتورة </summary>
    public long? ReceiptNo { get; private set; }
    /// <summary> علم تنفيذ السطر </summary>
    public bool? ProcessedFlag { get; private set; }
    /// <summary> معطل </summary>
    public bool? Inactive { get; private set; }
    /// <summary> المستخدم الذي عطل </summary>
    public int? InactiveUserId { get; private set; }
    /// <summary> تاريخ التعطيل </summary>
    public DateTime? InactiveDate { get; private set; }
    /// <summary> سبب التعطيل </summary>
    public string? InactiveReason { get; private set; }
    /// <summary> حالة دفع الفاتورة </summary>
    public bool? MoveBillPay { get; private set; }
    /// <summary> رقم فاتورة الدفع </summary>
    public long? ReceiptNoPay { get; private set; }
    /// <summary> تسلسل فاتورة الدفع </summary>
    public long? ReceiptSerialPay { get; private set; }
    /// <summary> سنة الفترة </summary>
    public bool? PeriodYear { get; private set; }
    /// <summary> المستخدم الذي أضاف </summary>
    public int AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime AddedDate { get; private set; }
    /// <summary> المستخدم الذي عدل </summary>
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
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
    /// <summary> كود العميل </summary>
    public string? CustomerCode { get; private set; }
    /// <summary> رقم نوع الوقود </summary>
    public int? FuelTypeNo { get; private set; }
    public PosCreditBillMaster PosCreditBillMaster { get; private set; } // Navigation
    public Customer Customer { get; private set; } // Navigation
}