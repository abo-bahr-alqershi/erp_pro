public class BankAdjustDetail
{
    public long DocumentNo { get; private set; }
    public long? DocumentSerial { get; private set; }
    public long? BankNo { get; private set; }
    /// <summary> كود الحساب البنكي </summary>
    public string AccountCode { get; private set; }
    /// <summary> كود الحساب الفرعي </summary>
    public string? AccountCodeDetail { get; private set; }
    public short? AccountDetailType { get; private set; }
    /// <summary> رمز العملة </summary>
    public string CurrencyCode { get; private set; }
    public short? BranchBankNo { get; private set; }
    /// <summary> رصيد البنك </summary>
    public int? BankBalance { get; private set; }
    /// <summary> وصف السطر </summary>
    public string? DocumentDescription { get; private set; }
    /// <summary> مبلغ القيد </summary>
    public int? JournalAmount { get; private set; }
    /// <summary> مبلغ القيد أجنبي </summary>
    public int? JournalAmountForeign { get; private set; }
    public long? RecordNo { get; private set; }
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public short CompanyNo { get; private set; }
    public int BranchNo { get; private set; }
    public short? BranchYear { get; private set; }
    public short? BranchUser { get; private set; }
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
    public long? DocumentTypeRef { get; private set; }
    public long? JournalVoucherTypeRef { get; private set; }
    public long? DocumentNoRef { get; private set; }
    public long? DocumentSerialRef { get; private set; }
    public long? DocumentSequenceRef { get; private set; }
    public long? DocumentSequence { get; private set; }
    /// <summary> سعر الصرف </summary>
    public int? ExchangeRate { get; private set; }
    /// <summary> كود حساب فرعي إضافي </summary>
    public string? AccountCodeDetailSub { get; private set; }
    public AccountCurrency AccountCurrency { get; private set; } // Navigation
    public BankAdjustMaster BankAdjustMaster { get; private set; } // Navigation
    public CashAtBankDetail CashAtBankDetail { get; private set; } // Navigation
}