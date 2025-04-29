public class AccountCurrency
{
    /// <summary> رمز الحساب الرئيسي المرتبط بهذه العملة </summary>
    public string? AccountCode { get; private set; }
    /// <summary> "رمز العملة (مثال: SAR, USD)" </summary>
    public string? CurrencyCode { get; private set; }
    /// <summary> علم يحدد إذا كانت هذه العملة مفعلة أم لا للحساب </summary>
    public bool? Inactive { get; private set; }
    /// <summary> علم يحدد إذا تم استخدام هذه العملة ضمن عمليات الحساب </summary>
    public bool? Used { get; private set; }
    /// <summary> رقم المستخدم الذي أضاف ربط العملة بالحساب </summary>
    public int? AddedByUserId { get; private set; }
    /// <summary> تاريخ إضافة العملة للحساب </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> رقم المستخدم الذي عدّل بيانات العملة للحساب </summary>
    public int? UpdatedByUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل على العملة للحساب </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> عدد مرات التحديث/التعديل </summary>
    public long? UpdateCount { get; private set; }
    public Account Account { get; private set; } // Navigation
    public CurrencyExchangeRate CurrencyExchangeRate { get; private set; } // Navigation
    public ICollection<JournalDetail> JournalDetails { get; private set; } // Inverse Navigation
    public ICollection<JournalVoucher> JournalVouchers { get; private set; } // Inverse Navigation
    public ICollection<BankAdjustDetail> BankAdjustDetails { get; private set; } // Inverse Navigation
    public ICollection<SalesInvoice> SalesInvoices { get; private set; } // Inverse Navigation
    public ICollection<CashAtBankDetail> CashAtBankDetails { get; private set; } // Inverse Navigation
    public ICollection<CashInHandDetail> CashInHandDetails { get; private set; } // Inverse Navigation
    public ICollection<SalesReturn> SalesReturns { get; private set; } // Inverse Navigation
    public ICollection<PurchaseReturn> PurchaseReturns { get; private set; } // Inverse Navigation
    public ICollection<Note> Notes { get; private set; } // Inverse Navigation
    public ICollection<OpenBalance> OpenBalances { get; private set; } // Inverse Navigation
    public ICollection<PurchaseCharge> PurchaseCharges { get; private set; } // Inverse Navigation
    public ICollection<PurchaseChargeItems> PurchaseChargeItemses { get; private set; } // Inverse Navigation
    public ICollection<InventoryAdjustment> InventoryAdjustments { get; private set; } // Inverse Navigation
    public ICollection<VoucherDetail> VoucherDetails { get; private set; } // Inverse Navigation
}