public class BankAdjustDetail
{
    /// <summary> رقم المستند </summary>
    public long DocumentNo { get; private set; }
    /// <summary> تسلسل المستند </summary>
    public long? DocumentSerial { get; private set; }
    /// <summary> رقم البنك </summary>
    public long? BankNo { get; private set; }
    /// <summary> كود الحساب البنكي </summary>
    public string AccountCode { get; private set; }
    /// <summary> كود الحساب الفرعي </summary>
    public string? AccountCodeDetail { get; private set; }
    /// <summary> نوع تفاصيل الحساب </summary>
    public short? AccountDetailType { get; private set; }
    /// <summary> رمز العملة </summary>
    public string CurrencyCode { get; private set; }
    /// <summary> رقم البنك الفرعي </summary>
    public short? BranchBankNo { get; private set; }
    /// <summary> رصيد البنك </summary>
    public int? BankBalance { get; private set; }
    /// <summary> وصف السطر </summary>
    public string? DocumentDescription { get; private set; }
    /// <summary> مبلغ القيد </summary>
    public int? JournalAmount { get; private set; }
    /// <summary> مبلغ القيد أجنبي </summary>
    public int? JournalAmountForeign { get; private set; }
    /// <summary> رقم السطر </summary>
    public long? RecordNo { get; private set; }
    /// <summary> المستخدم الذي أضاف السطر </summary>
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> المستخدم الذي عدل السطر </summary>
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> رقم الشركة </summary>
    public short CompanyNo { get; private set; }
    /// <summary> رقم الفرع </summary>
    public int BranchNo { get; private set; }
    /// <summary> السنة المالية للفرع </summary>
    public short? BranchYear { get; private set; }
    /// <summary> مستخدم الفرع </summary>
    public short? BranchUser { get; private set; }
    /// <summary> عدد مرات التحديث </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> مركز التكلفة </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> رقم المشروع </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> رقم النشاط </summary>
    public string? ActivityNo { get; private set; }
    /// <summary> رقم مرجعي إضافي </summary>
    public string? ReferenceNo { get; private set; }
    /// <summary> رقم فرع المستند </summary>
    public int? DocumentBranchNo { get; private set; }
    /// <summary> نوع المستند المرجعي </summary>
    public long? DocumentTypeRef { get; private set; }
    /// <summary> نوع قيد اليومية المرجعي </summary>
    public long? JournalVoucherTypeRef { get; private set; }
    /// <summary> رقم المستند المرجعي </summary>
    public long? DocumentNoRef { get; private set; }
    /// <summary> تسلسل المستند المرجعي </summary>
    public long? DocumentSerialRef { get; private set; }
    /// <summary> تسلسل المستند المرجعي </summary>
    public long? DocumentSequenceRef { get; private set; }
    /// <summary> تسلسل السطر </summary>
    public long? DocumentSequence { get; private set; }
    /// <summary> سعر الصرف </summary>
    public int? ExchangeRate { get; private set; }
    /// <summary> كود حساب فرعي إضافي </summary>
    public string? AccountCodeDetailSub { get; private set; }
    public AccountCurrency AccountCurrency { get; private set; } // Navigation
    public BankAdjustMaster BankAdjustMaster { get; private set; } // Navigation
    public CashAtBankDetail CashAtBankDetail { get; private set; } // Navigation
}