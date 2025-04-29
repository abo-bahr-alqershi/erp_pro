public class ChequeTrace
{
    public bool AuditType { get; private set; }
    public bool VoucherType { get; private set; }
    public bool VoucherPayType { get; private set; }
    public long VoucherNo { get; private set; }
    public long CashNo { get; private set; }
    public long VoucherSerial { get; private set; }
    /// <summary> كود الحساب </summary>
    public string? AccountCode { get; private set; }
    /// <summary> كود الحساب الفرعي </summary>
    public string? AccountCodeDetail { get; private set; }
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
    public short? ChequeType { get; private set; }
    public long? CashBankNo { get; private set; }
    /// <summary> رقم الشيك </summary>
    public string? ChequeNo { get; private set; }
    /// <summary> تاريخ القيمة </summary>
    public DateTime? ValueDate { get; private set; }
    public bool? ChequePost { get; private set; }
    public bool? ChequeValued { get; private set; }
    /// <summary> رقم الملاحظة </summary>
    public string? NoteNo { get; private set; }
    public long? BankNo { get; private set; }
    /// <summary> رقم مرجعي إضافي </summary>
    public string? ReferenceNo { get; private set; }
    public long? RecordNo { get; private set; }
    public bool? Endorsement { get; private set; }
    /// <summary> كود الحساب النهائي </summary>
    public string? AccountCodeEnd { get; private set; }
    /// <summary> كود الحساب الفرعي النهائي </summary>
    public string? AccountCodeDetailEnd { get; private set; }
    public short? AccountDetailTypeEnd { get; private set; }
    /// <summary> كود العميل النهائي </summary>
    public string? CustomerCodeEnd { get; private set; }
    /// <summary> كود المورد النهائي </summary>
    public string? VendorCodeEnd { get; private set; }
    public int? ExternalPost { get; private set; }
    public long? DocSequence { get; private set; }
    public int? DocTypeRef { get; private set; }
    public int? DocJVTypeRef { get; private set; }
    public long? DocumentNoRef { get; private set; }
    public long? DocumentSerialRef { get; private set; }
    public int? PostUserId { get; private set; }
    /// <summary> تاريخ الترحيل </summary>
    public DateTime? PostDate { get; private set; }
    public int? UnpostUserId { get; private set; }
    /// <summary> تاريخ إلغاء الترحيل </summary>
    public DateTime? UnpostDate { get; private set; }
    public int? AuditUserId { get; private set; }
    /// <summary> تاريخ التدقيق </summary>
    public DateTime? AuditDate { get; private set; }
    public short CompanyNo { get; private set; }
    public int? BranchNo { get; private set; }
    public short? BranchYear { get; private set; }
    public short? BranchUser { get; private set; }
    public long? UpdateCount { get; private set; }
    public long? ReportPriority { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    /// <summary> تاريخ التظهير </summary>
    public DateTime? EndorsementDate { get; private set; }
}