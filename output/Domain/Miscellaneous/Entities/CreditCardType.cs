public class CreditCardType
{
    public int? CreditCardNo { get; private set; }
    /// <summary> اسم البطاقة </summary>
    public string? CreditCardName { get; private set; }
    /// <summary> اسم البطاقة بالإنجليزي </summary>
    public string? CreditCardEName { get; private set; }
    /// <summary> حساب البنك المربوط </summary>
    public string? BankAccount { get; private set; }
    /// <summary> حساب العمولة </summary>
    public string? CommissionAccount { get; private set; }
    public decimal? CommissionPercent { get; private set; }
    public bool? CommissionCalcType { get; private set; }
    public short? DuePeriod { get; private set; }
    public short? CreditCardType { get; private set; }
    public long? MachineNoBank { get; private set; }
    public int? MachineNo { get; private set; }
    public long? WarehouseCode { get; private set; }
    /// <summary> كود الحساب لرسالة الاستلام </summary>
    public string? AccountCodeRecLetter { get; private set; }
    public long? BankNo { get; private set; }
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ التعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public long? UpdateCount { get; private set; }
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
    public int? ConnectBranchNo { get; private set; }
    /// <summary> ربط اسم الجهاز </summary>
    public string? ConnectTerminalName { get; private set; }
    public Warehouse Warehouse { get; private set; } // Navigation
    public ICollection<SalesInvoice> SalesInvoices { get; private set; } // Inverse Navigation
}