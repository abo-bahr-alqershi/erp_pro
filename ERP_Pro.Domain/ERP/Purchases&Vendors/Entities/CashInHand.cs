public class CashInHand
{
    /// <summary> رقم الصندوق النقدي </summary>
    public long? CashNo { get; private set; }
    /// <summary> اسم الصندوق (عربي) </summary>
    public string CashName { get; private set; }
    /// <summary> اسم الصندوق (إنجليزي) </summary>
    public string? CashEnglishName { get; private set; }
    /// <summary> كود الحساب المحاسبي </summary>
    public string AccountCode { get; private set; }
    /// <summary> الرقم التسلسلي للصندوق </summary>
    public long CashSerial { get; private set; }
    /// <summary> نوع الصندوق (رئيسي/فرعي/...) </summary>
    public bool? CashType { get; private set; }
    /// <summary> استخدام الصندوق للإيرادات </summary>
    public bool? UseCashIncome { get; private set; }
    /// <summary> مرتبط بنظام نقاط البيع (1=نعم) </summary>
    public bool? POSSystem { get; private set; }
    /// <summary> ربط بفرع معين </summary>
    public int? BranchNo { get; private set; }
    /// <summary> تاريخ آخر تأكيد للصندوق </summary>
    public DateTime? ConfirmLastDate { get; private set; }
    /// <summary> معطل (1=نعم) </summary>
    public bool? Inactive { get; private set; }
    /// <summary> تاريخ التعطيل </summary>
    public DateTime? InactiveDate { get; private set; }
    /// <summary> سبب التعطيل </summary>
    public string? InactiveReason { get; private set; }
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
    /// <summary> أولوية التقرير </summary>
    public long? ReportPriority { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    /// <summary> نوع تسلسل الإيصال </summary>
    public short? ReceiptSerialType { get; private set; }
    /// <summary> نوع الدفع الافتراضي </summary>
    public short? PaymentTypeNoDefault { get; private set; }
    /// <summary> نوع المقبوض الافتراضي </summary>
    public short? ReceivedTypeNoDefault { get; private set; }
    /// <summary> صندوق وسيط (1=نعم) </summary>
    public bool? MediatorFlag { get; private set; }
    /// <summary> رقم مجموعة الصناديق </summary>
    public long? GroupNo { get; private set; }
    public Account Account { get; private set; } // Navigation
    public ICollection<CashInHandDetail> CashInHandDetails { get; private set; } // Inverse Navigation
}