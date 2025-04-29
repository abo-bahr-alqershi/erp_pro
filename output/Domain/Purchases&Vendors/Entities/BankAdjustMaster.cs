public class BankAdjustMaster
{
    public long DocumentNo { get; private set; }
    public long? DocumentSerial { get; private set; }
    /// <summary> تاريخ المستند </summary>
    public DateTime? DocumentDate { get; private set; }
    public long BankNo { get; private set; }
    /// <summary> كود الحساب البنكي </summary>
    public string AccountCode { get; private set; }
    /// <summary> رمز العملة </summary>
    public string CurrencyCode { get; private set; }
    public short? BranchBankNo { get; private set; }
    /// <summary> رصيد البنك حسب كشف البنك </summary>
    public int? BankBalanceInBank { get; private set; }
    /// <summary> رصيد البنك حسب الشركة </summary>
    public int? BankBalanceInCompany { get; private set; }
    public bool? Processed { get; private set; }
    public bool? JournalVoucherFlag { get; private set; }
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
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public long? ReportPriority { get; private set; }
    public long? AdjustmentTypeNo { get; private set; }
    /// <summary> رقم مرجعي إضافي </summary>
    public string? ReferenceNo { get; private set; }
    /// <summary> سعر الصرف </summary>
    public int? ExchangeRate { get; private set; }
    public bool? StandBy { get; private set; }
    public short? AttachNo { get; private set; }
    public long? DocumentSequence { get; private set; }
    public long? DocumentTypeRef { get; private set; }
    public long? JournalVoucherTypeRef { get; private set; }
    public long? DocumentNoRef { get; private set; }
    public long? DocumentSerialRef { get; private set; }
    public long? DocumentSequenceRef { get; private set; }
    /// <summary> وصف المستند </summary>
    public string? DocumentDescription { get; private set; }
    public bool? DocumentPostFlag { get; private set; }
    public int? PostUserId { get; private set; }
    /// <summary> تاريخ الترحيل </summary>
    public DateTime? PostDate { get; private set; }
    public int? UnpostUserId { get; private set; }
    /// <summary> تاريخ إلغاء الترحيل </summary>
    public DateTime? UnpostDate { get; private set; }
    public bool? AuditRef { get; private set; }
    /// <summary> وصف مرجع التدقيق </summary>
    public string? AuditRefDesc { get; private set; }
    public int? AuditRefUserId { get; private set; }
    /// <summary> تاريخ مرجع التدقيق </summary>
    public DateTime? AuditRefDate { get; private set; }
    public int? ExternalPost { get; private set; }
    /// <summary> مركز التكلفة </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> رقم المشروع </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> رقم النشاط </summary>
    public string? ActivityNo { get; private set; }
    public Account Account { get; private set; } // Navigation
    public CashAtBankDetail CashAtBankDetail { get; private set; } // Navigation
    public ICollection<BankAdjustDetail> BankAdjustDetails { get; private set; } // Inverse Navigation
}