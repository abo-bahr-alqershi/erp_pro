public class BankAdjustMaster
{
    /// <summary> رقم المستند </summary>
    public long DocumentNo { get; private set; }
    /// <summary> تسلسل المستند </summary>
    public long? DocumentSerial { get; private set; }
    /// <summary> تاريخ المستند </summary>
    public DateTime? DocumentDate { get; private set; }
    /// <summary> رقم البنك </summary>
    public long BankNo { get; private set; }
    /// <summary> كود الحساب البنكي </summary>
    public string AccountCode { get; private set; }
    /// <summary> رمز العملة </summary>
    public string CurrencyCode { get; private set; }
    /// <summary> رقم البنك الفرعي </summary>
    public short? BranchBankNo { get; private set; }
    /// <summary> رصيد البنك حسب كشف البنك </summary>
    public int? BankBalanceInBank { get; private set; }
    /// <summary> رصيد البنك حسب الشركة </summary>
    public int? BankBalanceInCompany { get; private set; }
    /// <summary> تمت المعالجة (1=نعم) </summary>
    public bool? Processed { get; private set; }
    /// <summary> قيد يومية مرتبط (1=نعم) </summary>
    public bool? JournalVoucherFlag { get; private set; }
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
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    /// <summary> أولوية التقرير </summary>
    public long? ReportPriority { get; private set; }
    /// <summary> نوع التسوية </summary>
    public long? AdjustmentTypeNo { get; private set; }
    /// <summary> رقم مرجعي إضافي </summary>
    public string? ReferenceNo { get; private set; }
    /// <summary> سعر الصرف </summary>
    public int? ExchangeRate { get; private set; }
    /// <summary> قيد الانتظار (1=نعم) </summary>
    public bool? StandBy { get; private set; }
    /// <summary> عدد المرفقات </summary>
    public short? AttachNo { get; private set; }
    /// <summary> تسلسل المستند </summary>
    public long? DocumentSequence { get; private set; }
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
    /// <summary> وصف المستند </summary>
    public string? DocumentDescription { get; private set; }
    /// <summary> ترحيل المستند (1=نعم) </summary>
    public bool? DocumentPostFlag { get; private set; }
    /// <summary> المستخدم الذي رحّل المستند </summary>
    public int? PostUserId { get; private set; }
    /// <summary> تاريخ الترحيل </summary>
    public DateTime? PostDate { get; private set; }
    /// <summary> المستخدم الذي ألغى الترحيل </summary>
    public int? UnpostUserId { get; private set; }
    /// <summary> تاريخ إلغاء الترحيل </summary>
    public DateTime? UnpostDate { get; private set; }
    /// <summary> مرجع التدقيق </summary>
    public bool? AuditRef { get; private set; }
    /// <summary> وصف مرجع التدقيق </summary>
    public string? AuditRefDesc { get; private set; }
    /// <summary> المستخدم لمرجع التدقيق </summary>
    public int? AuditRefUserId { get; private set; }
    /// <summary> تاريخ مرجع التدقيق </summary>
    public DateTime? AuditRefDate { get; private set; }
    /// <summary> تم الترحيل خارجيًا </summary>
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