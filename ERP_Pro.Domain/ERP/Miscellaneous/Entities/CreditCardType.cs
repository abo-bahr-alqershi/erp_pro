public class CreditCardType
{
    /// <summary> رقم البطاقة الائتمانية </summary>
    public int? CreditCardNo { get; private set; }
    /// <summary> اسم البطاقة </summary>
    public string? CreditCardName { get; private set; }
    /// <summary> اسم البطاقة بالإنجليزي </summary>
    public string? CreditCardEName { get; private set; }
    /// <summary> حساب البنك المربوط </summary>
    public string? BankAccount { get; private set; }
    /// <summary> حساب العمولة </summary>
    public string? CommissionAccount { get; private set; }
    /// <summary> نسبة العمولة </summary>
    public decimal? CommissionPercent { get; private set; }
    /// <summary> نوع احتساب العمولة </summary>
    public bool? CommissionCalcType { get; private set; }
    /// <summary> فترة الاستحقاق (أيام) </summary>
    public short? DuePeriod { get; private set; }
    /// <summary> نوع البطاقة </summary>
    public short? CreditCardType { get; private set; }
    /// <summary> رقم جهاز البنك </summary>
    public long? MachineNoBank { get; private set; }
    /// <summary> رقم جهاز نقاط البيع </summary>
    public int? MachineNo { get; private set; }
    /// <summary> رقم المستودع </summary>
    public long? WarehouseCode { get; private set; }
    /// <summary> كود الحساب لرسالة الاستلام </summary>
    public string? AccountCodeRecLetter { get; private set; }
    /// <summary> رقم البنك </summary>
    public long? BankNo { get; private set; }
    /// <summary> المستخدم الذي أضاف </summary>
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> المستخدم الذي عدل </summary>
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ التعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> عدد مرات التحديث </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> أولوية التقرير </summary>
    public long? ReportPriority { get; private set; }
    /// <summary> جهاز الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> جهاز التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    /// <summary> مبلغ العمولة </summary>
    public int? CommissionAmount { get; private set; }
    /// <summary> الحد الأعلى لنسبة العمولة </summary>
    public int? MaxCommissionPercent { get; private set; }
    /// <summary> الحد الأعلى لمبلغ العمولة </summary>
    public int? MaxCommissionAmount { get; private set; }
    /// <summary> عملة الحد الأعلى للعمولة </summary>
    public string? CurrencyMaxComm { get; private set; }
    /// <summary> ربط الفرع </summary>
    public int? ConnectBranchNo { get; private set; }
    /// <summary> ربط اسم الجهاز </summary>
    public string? ConnectTerminalName { get; private set; }
    public Warehouse Warehouse { get; private set; } // Navigation
    public ICollection<SalesInvoice> SalesInvoices { get; private set; } // Inverse Navigation
}