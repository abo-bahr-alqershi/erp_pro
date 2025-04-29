public class ChequeTrace
{
    /// <summary> نوع الحركة (إيداع/صرف/...) </summary>
    public bool AuditType { get; private set; }
    /// <summary> نوع السند </summary>
    public bool VoucherType { get; private set; }
    /// <summary> نوع دفع السند </summary>
    public bool VoucherPayType { get; private set; }
    /// <summary> رقم السند </summary>
    public long VoucherNo { get; private set; }
    /// <summary> رقم الصندوق </summary>
    public long CashNo { get; private set; }
    /// <summary> تسلسل السند </summary>
    public long VoucherSerial { get; private set; }
    /// <summary> كود الحساب </summary>
    public string? AccountCode { get; private set; }
    /// <summary> كود الحساب الفرعي </summary>
    public string? AccountCodeDetail { get; private set; }
    /// <summary> نوع تفاصيل الحساب </summary>
    public short? AccountDetailType { get; private set; }
    /// <summary> رمز العملة </summary>
    public string? CurrencyCode { get; private set; }
    /// <summary> وصف الحساب </summary>
    public string? AccountDesc { get; private set; }
    /// <summary> سبب الإرجاع </summary>
    public string? ReturnReason { get; private set; }
    /// <summary> مبلغ الحساب </summary>
    public int? AccountAmount { get; private set; }
    /// <summary> مبلغ الحساب أجنبي </summary>
    public int? AccountAmountForeign { get; private set; }
    /// <summary> مركز التكلفة </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> كود العميل </summary>
    public string? CustomerCode { get; private set; }
    /// <summary> كود المورد </summary>
    public string? VendorCode { get; private set; }
    /// <summary> نوع الشيك </summary>
    public short? ChequeType { get; private set; }
    /// <summary> رقم الصندوق/البنك </summary>
    public long? CashBankNo { get; private set; }
    /// <summary> رقم الشيك </summary>
    public string? ChequeNo { get; private set; }
    /// <summary> تاريخ القيمة </summary>
    public DateTime? ValueDate { get; private set; }
    /// <summary> تم الترحيل (1=نعم) </summary>
    public bool? ChequePost { get; private set; }
    /// <summary> تم التقييم (1=نعم) </summary>
    public bool? ChequeValued { get; private set; }
    /// <summary> رقم الملاحظة </summary>
    public string? NoteNo { get; private set; }
    /// <summary> رقم البنك </summary>
    public long? BankNo { get; private set; }
    /// <summary> رقم مرجعي إضافي </summary>
    public string? ReferenceNo { get; private set; }
    /// <summary> رقم السطر </summary>
    public long? RecordNo { get; private set; }
    /// <summary> تظهير (1=نعم) </summary>
    public bool? Endorsement { get; private set; }
    /// <summary> كود الحساب النهائي </summary>
    public string? AccountCodeEnd { get; private set; }
    /// <summary> كود الحساب الفرعي النهائي </summary>
    public string? AccountCodeDetailEnd { get; private set; }
    /// <summary> نوع تفاصيل الحساب النهائي </summary>
    public short? AccountDetailTypeEnd { get; private set; }
    /// <summary> كود العميل النهائي </summary>
    public string? CustomerCodeEnd { get; private set; }
    /// <summary> كود المورد النهائي </summary>
    public string? VendorCodeEnd { get; private set; }
    /// <summary> تم الترحيل خارجيًا </summary>
    public int? ExternalPost { get; private set; }
    /// <summary> تسلسل المستند </summary>
    public long? DocSequence { get; private set; }
    /// <summary> نوع المستند المرجعي </summary>
    public int? DocTypeRef { get; private set; }
    /// <summary> نوع قيد المستند المرجعي </summary>
    public int? DocJVTypeRef { get; private set; }
    /// <summary> رقم المستند المرجعي </summary>
    public long? DocumentNoRef { get; private set; }
    /// <summary> تسلسل المستند المرجعي </summary>
    public long? DocumentSerialRef { get; private set; }
    /// <summary> مستخدم الترحيل </summary>
    public int? PostUserId { get; private set; }
    /// <summary> تاريخ الترحيل </summary>
    public DateTime? PostDate { get; private set; }
    /// <summary> مستخدم إلغاء الترحيل </summary>
    public int? UnpostUserId { get; private set; }
    /// <summary> تاريخ إلغاء الترحيل </summary>
    public DateTime? UnpostDate { get; private set; }
    /// <summary> مستخدم التدقيق </summary>
    public int? AuditUserId { get; private set; }
    /// <summary> تاريخ التدقيق </summary>
    public DateTime? AuditDate { get; private set; }
    /// <summary> رقم الشركة </summary>
    public short CompanyNo { get; private set; }
    /// <summary> رقم الفرع </summary>
    public int? BranchNo { get; private set; }
    /// <summary> السنة المالية للفرع </summary>
    public short? BranchYear { get; private set; }
    /// <summary> مستخدم الفرع </summary>
    public short? BranchUser { get; private set; }
    /// <summary> عدد مرات التحديث </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> أولوية التقرير </summary>
    public long? ReportPriority { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    /// <summary> تاريخ التظهير </summary>
    public DateTime? EndorsementDate { get; private set; }
}