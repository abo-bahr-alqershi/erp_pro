public class VoucherDetail
{
    public bool? VoucherType { get; private set; }
    public bool VoucherPayType { get; private set; }
    public long VoucherNo { get; private set; }
    public long CashNo { get; private set; }
    public long? VoucherSerial { get; private set; }
    /// <summary> كود الحساب </summary>
    public string AccountCode { get; private set; }
    /// <summary> كود التفاصيل للحساب </summary>
    public string? AccountDtlCode { get; private set; }
    /// <summary> كود التفاصيل الفرعية للحساب </summary>
    public string? AccountDtlSub { get; private set; }
    /// <summary> كود التفاصيل الفرعية النهائية </summary>
    public string? AccountDtlSubEnd { get; private set; }
    /// <summary> كود التفاصيل الفرعية للخصم </summary>
    public string? AccountDtlSubDrComm { get; private set; }
    public short? AccountDtlType { get; private set; }
    /// <summary> رمز العملة </summary>
    public string? CurrencyCode { get; private set; }
    /// <summary> وصف السطر المحاسبي </summary>
    public string? AccountDesc { get; private set; }
    /// <summary> المبلغ بالعملة المحلية </summary>
    public int? Amount { get; private set; }
    /// <summary> المبلغ بالعملة الأجنبية </summary>
    public int? AmountForeign { get; private set; }
    /// <summary> سعر الصرف </summary>
    public int? ExchangeRate { get; private set; }
    /// <summary> مركز التكلفة </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> رقم المشروع </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> رقم النشاط </summary>
    public string? ActivityNo { get; private set; }
    /// <summary> كود العميل </summary>
    public string? CCode { get; private set; }
    /// <summary> كود المورد </summary>
    public string? VCode { get; private set; }
    /// <summary> كود التقرير </summary>
    public string? ReportCode { get; private set; }
    public long? CashBankNo { get; private set; }
    public long? ChequeNo { get; private set; }
    /// <summary> تاريخ القيمة </summary>
    public DateTime? ValueDate { get; private set; }
    public bool? ChequePost { get; private set; }
    public bool? ChequeValued { get; private set; }
    public bool? Endorsement { get; private set; }
    /// <summary> رقم الملاحظة </summary>
    public string? NoteNo { get; private set; }
    public long? BankNo { get; private set; }
    /// <summary> اسم البنك </summary>
    public string? BankName { get; private set; }
    public int? BankBranchNo { get; private set; }
    /// <summary> رمز الحساب النهائي </summary>
    public string? AccountCodeEnd { get; private set; }
    /// <summary> كود العميل النهائي </summary>
    public string? CCodeEnd { get; private set; }
    /// <summary> كود المورد النهائي </summary>
    public string? VCodeEnd { get; private set; }
    /// <summary> سبب الإرجاع </summary>
    public string? ReturnReason { get; private set; }
    /// <summary> رقم الاعتماد المستندي </summary>
    public string? LCNo { get; private set; }
    public long? CINo { get; private set; }
    public long? CISerial { get; private set; }
    public long? HRSPayNo { get; private set; }
    public long? KNo { get; private set; }
    public long? KSerial { get; private set; }
    public long? BillNo { get; private set; }
    public long? BillSerial { get; private set; }
    public long? INo { get; private set; }
    public long? WONo { get; private set; }
    public long? WOSerial { get; private set; }
    public long? ContractNo { get; private set; }
    /// <summary> الرقم التسلسلي للعقد </summary>
    public int? ContractSerial { get; private set; }
    public int? ContractBatch { get; private set; }
    /// <summary> مبلغ العمولة للتقرير </summary>
    public int? ReportCommAmount { get; private set; }
    /// <summary> رقم مرجعي إضافي </summary>
    public string? RefNo { get; private set; }
    public long? RecordNo { get; private set; }
    public long? ConnVoucherNo { get; private set; }
    public long? ConnVoucherSerial { get; private set; }
    /// <summary> مبلغ السند المرتبط </summary>
    public int? ConnVoucherAmount { get; private set; }
    public int? ExternalPost { get; private set; }
    /// <summary> تاريخ التسوية </summary>
    public DateTime? BlmntDate { get; private set; }
    public long? DocSequenceRef { get; private set; }
    public long? DocSequence { get; private set; }
    public int? CashierNo { get; private set; }
    /// <summary> ملاحظات </summary>
    public string? Note { get; private set; }
    /// <summary> رمز حساب الخصم </summary>
    public string? AccountCodeDrComm { get; private set; }
    /// <summary> كود تفاصيل حساب الخصم </summary>
    public string? AccountDtlCodeDrComm { get; private set; }
    public short? AccountDtlTypeDrComm { get; private set; }
    /// <summary> مبلغ آخر بالعملة المحلية </summary>
    public int? OtrAmtLocal { get; private set; }
    /// <summary> مبلغ آخر بالعملة الأجنبية </summary>
    public int? OtrAmtForeign { get; private set; }
    public bool? AuditRef { get; private set; }
    /// <summary> وصف مرجع التدقيق </summary>
    public string? AuditRefDesc { get; private set; }
    public int? AuditRefUserId { get; private set; }
    /// <summary> تاريخ مرجع التدقيق </summary>
    public DateTime? AuditRefDate { get; private set; }
    public short? AccountDtlTypeEnd { get; private set; }
    /// <summary> كود تفاصيل الحساب النهائي </summary>
    public string? AccountDtlCodeEnd { get; private set; }
    public int? DocTypeRef { get; private set; }
    public int? DocJVTypeRef { get; private set; }
    public long? DocNoRef { get; private set; }
    public long? DocSerRef { get; private set; }
    public int? DocBranchNo { get; private set; }
    public int? PostUserId { get; private set; }
    /// <summary> تاريخ الترحيل </summary>
    public DateTime? PostDate { get; private set; }
    public int? UnpostUserId { get; private set; }
    /// <summary> تاريخ إلغاء الترحيل </summary>
    public DateTime? UnpostDate { get; private set; }
    /// <summary> تاريخ البداية للعقد </summary>
    public DateTime? FContractDate { get; private set; }
    /// <summary> تاريخ النهاية للعقد </summary>
    public DateTime? TContractDate { get; private set; }
    /// <summary> تاريخ البداية الهجري للعقد </summary>
    public string? FContractDateAH { get; private set; }
    /// <summary> تاريخ النهاية الهجري للعقد </summary>
    public string? TContractDateAH { get; private set; }
    public int? CRDCardNo { get; private set; }
    /// <summary> رمز الحساب للرسالة المصرفية </summary>
    public string? CRDAcodeRecLetter { get; private set; }
    /// <summary> حساب عمولة البطاقة المصرفية </summary>
    public string? CRDCommAccount { get; private set; }
    public bool? CRDCommCalcType { get; private set; }
    /// <summary> نسبة العمولة </summary>
    public int? CRDCommPercent { get; private set; }
    /// <summary> نسبة ضريبة القيمة المضافة للعمولة </summary>
    public int? CRDVatCommPercent { get; private set; }
    /// <summary> فترة استحقاق البطاقة المصرفية </summary>
    public int? CRDDuePeriod { get; private set; }
    public long? CRDPrssesNo { get; private set; }
    /// <summary> حقل إضافي </summary>
    public string? Fld1 { get; private set; }
    /// <summary> حقل إضافي </summary>
    public string? Fld2 { get; private set; }
    /// <summary> حقل إضافي </summary>
    public string? Fld3 { get; private set; }
    /// <summary> حقل إضافي </summary>
    public string? Fld4 { get; private set; }
    /// <summary> حقل إضافي </summary>
    public string? Fld5 { get; private set; }
    public int? AddedByUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    public int? UpdatedByUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public long? UpdateCount { get; private set; }
    public short CompanyNo { get; private set; }
    public int BranchNo { get; private set; }
    public short? BranchYear { get; private set; }
    public short? BranchUser { get; private set; }
    /// <summary> مبلغ عمولة البطاقة المحلية </summary>
    public int? CRDCommAmtLocal { get; private set; }
    /// <summary> مبلغ ضريبة العمولة المحلية </summary>
    public int? CRDVatCommAmtLocal { get; private set; }
    /// <summary> مبلغ السحب المحلي </summary>
    public int? CRDWthdrwAmtLocal { get; private set; }
    public short? CRDCardType { get; private set; }
    /// <summary> تاريخ التظهير </summary>
    public DateTime? EndorsementDate { get; private set; }
    public short? EndorsementPost { get; private set; }
    public int? EndorsementPostUser { get; private set; }
    public int? EndorsementUnpostUser { get; private set; }
    /// <summary> تاريخ ترحيل التظهير </summary>
    public DateTime? EndorsementPostDate { get; private set; }
    /// <summary> تاريخ إلغاء ترحيل التظهير </summary>
    public DateTime? EndorsementUnpostDate { get; private set; }
    public int? EndorsementAuditRefUser { get; private set; }
    public bool? EndorsementAuditRef { get; private set; }
    /// <summary> وصف مرجع تدقيق التظهير </summary>
    public string? EndorsementAuditRefDesc { get; private set; }
    /// <summary> تاريخ تدقيق المستخدم التظهير </summary>
    public DateTime? EndorsementUAuditRefDate { get; private set; }
    /// <summary> تاريخ مرجع تدقيق التظهير </summary>
    public DateTime? EndorsementAuditRefDate { get; private set; }
    public int? CalcTypeNoTax { get; private set; }
    /// <summary> نسبة الضريبة </summary>
    public int? TaxPercent { get; private set; }
    /// <summary> مبلغ الضريبة </summary>
    public int? TaxAmount { get; private set; }
    /// <summary> مبلغ عمولة البطاقة </summary>
    public int? CRDCommAmt { get; private set; }
    /// <summary> مبلغ ضريبة العمولة </summary>
    public int? CRDVatCommAmt { get; private set; }
    /// <summary> الحد الأقصى للعمولة بالعملة </summary>
    public string? CRDAcyMaxComm { get; private set; }
    /// <summary> مبلغ السحب </summary>
    public int? CRDWthdrwAmt { get; private set; }
    /// <summary> الحد الأقصى لمبلغ العمولة للمعاملة </summary>
    public int? CRDPrcssMaxCommAmt { get; private set; }
    public AccountCurrency AccountCurrency { get; private set; } // Navigation
    public Project Project { get; private set; } // Navigation
    public Customer Customer { get; private set; } // Navigation
    public Voucher Voucher { get; private set; } // Navigation
}