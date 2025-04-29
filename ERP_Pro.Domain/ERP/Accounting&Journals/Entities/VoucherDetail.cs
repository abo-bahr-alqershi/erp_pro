public class VoucherDetail
{
    /// <summary> نوع السند </summary>
    public bool? VoucherType { get; private set; }
    /// <summary> نوع الدفع للسند </summary>
    public bool VoucherPayType { get; private set; }
    /// <summary> رقم السند </summary>
    public long VoucherNo { get; private set; }
    /// <summary> رقم الصندوق </summary>
    public long CashNo { get; private set; }
    /// <summary> الرقم التسلسلي للسند </summary>
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
    /// <summary> نوع التفاصيل للحساب </summary>
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
    /// <summary> رقم الصندوق أو البنك </summary>
    public long? CashBankNo { get; private set; }
    /// <summary> رقم الشيك </summary>
    public long? ChequeNo { get; private set; }
    /// <summary> تاريخ القيمة </summary>
    public DateTime? ValueDate { get; private set; }
    /// <summary> حالة الترحيل للشيك </summary>
    public bool? ChequePost { get; private set; }
    /// <summary> حالة القيمة للشيك </summary>
    public bool? ChequeValued { get; private set; }
    /// <summary> علم التظهير </summary>
    public bool? Endorsement { get; private set; }
    /// <summary> رقم الملاحظة </summary>
    public string? NoteNo { get; private set; }
    /// <summary> رقم البنك </summary>
    public long? BankNo { get; private set; }
    /// <summary> اسم البنك </summary>
    public string? BankName { get; private set; }
    /// <summary> رقم فرع البنك </summary>
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
    /// <summary> رقم الاعتماد المستندي </summary>
    public long? CINo { get; private set; }
    /// <summary> الرقم التسلسلي للاعتماد المستندي </summary>
    public long? CISerial { get; private set; }
    /// <summary> رقم سند صرف الموارد البشرية </summary>
    public long? HRSPayNo { get; private set; }
    /// <summary> رقم الكمبيالة </summary>
    public long? KNo { get; private set; }
    /// <summary> الرقم التسلسلي للكمبيالة </summary>
    public long? KSerial { get; private set; }
    /// <summary> رقم الفاتورة </summary>
    public long? BillNo { get; private set; }
    /// <summary> الرقم التسلسلي للفاتورة </summary>
    public long? BillSerial { get; private set; }
    /// <summary> رقم العنصر </summary>
    public long? INo { get; private set; }
    /// <summary> رقم أمر العمل </summary>
    public long? WONo { get; private set; }
    /// <summary> الرقم التسلسلي لأمر العمل </summary>
    public long? WOSerial { get; private set; }
    /// <summary> رقم العقد </summary>
    public long? ContractNo { get; private set; }
    /// <summary> الرقم التسلسلي للعقد </summary>
    public int? ContractSerial { get; private set; }
    /// <summary> دفعة العقد </summary>
    public int? ContractBatch { get; private set; }
    /// <summary> مبلغ العمولة للتقرير </summary>
    public int? ReportCommAmount { get; private set; }
    /// <summary> رقم مرجعي إضافي </summary>
    public string? RefNo { get; private set; }
    /// <summary> رقم السطر في القيد </summary>
    public long? RecordNo { get; private set; }
    /// <summary> رقم السند المرتبط </summary>
    public long? ConnVoucherNo { get; private set; }
    /// <summary> الرقم التسلسلي للسند المرتبط </summary>
    public long? ConnVoucherSerial { get; private set; }
    /// <summary> مبلغ السند المرتبط </summary>
    public int? ConnVoucherAmount { get; private set; }
    /// <summary> علم الترحيل الخارجي </summary>
    public int? ExternalPost { get; private set; }
    /// <summary> تاريخ التسوية </summary>
    public DateTime? BlmntDate { get; private set; }
    /// <summary> تسلسل المستند المرجعي </summary>
    public long? DocSequenceRef { get; private set; }
    /// <summary> تسلسل المستند </summary>
    public long? DocSequence { get; private set; }
    /// <summary> رقم أمين الصندوق </summary>
    public int? CashierNo { get; private set; }
    /// <summary> ملاحظات </summary>
    public string? Note { get; private set; }
    /// <summary> رمز حساب الخصم </summary>
    public string? AccountCodeDrComm { get; private set; }
    /// <summary> كود تفاصيل حساب الخصم </summary>
    public string? AccountDtlCodeDrComm { get; private set; }
    /// <summary> نوع تفاصيل حساب الخصم </summary>
    public short? AccountDtlTypeDrComm { get; private set; }
    /// <summary> مبلغ آخر بالعملة المحلية </summary>
    public int? OtrAmtLocal { get; private set; }
    /// <summary> مبلغ آخر بالعملة الأجنبية </summary>
    public int? OtrAmtForeign { get; private set; }
    /// <summary> مرجع التدقيق </summary>
    public bool? AuditRef { get; private set; }
    /// <summary> وصف مرجع التدقيق </summary>
    public string? AuditRefDesc { get; private set; }
    /// <summary> رقم المستخدم لمرجع التدقيق </summary>
    public int? AuditRefUserId { get; private set; }
    /// <summary> تاريخ مرجع التدقيق </summary>
    public DateTime? AuditRefDate { get; private set; }
    /// <summary> نوع تفاصيل الحساب النهائي </summary>
    public short? AccountDtlTypeEnd { get; private set; }
    /// <summary> كود تفاصيل الحساب النهائي </summary>
    public string? AccountDtlCodeEnd { get; private set; }
    /// <summary> نوع المستند المرجعي </summary>
    public int? DocTypeRef { get; private set; }
    /// <summary> نوع القيد المرجعي </summary>
    public int? DocJVTypeRef { get; private set; }
    /// <summary> رقم المستند المرجعي </summary>
    public long? DocNoRef { get; private set; }
    /// <summary> الرقم التسلسلي للمستند المرجعي </summary>
    public long? DocSerRef { get; private set; }
    /// <summary> رقم فرع المستند </summary>
    public int? DocBranchNo { get; private set; }
    /// <summary> رقم المستخدم الذي رحل </summary>
    public int? PostUserId { get; private set; }
    /// <summary> تاريخ الترحيل </summary>
    public DateTime? PostDate { get; private set; }
    /// <summary> رقم المستخدم الذي ألغى الترحيل </summary>
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
    /// <summary> رقم البطاقة المصرفية </summary>
    public int? CRDCardNo { get; private set; }
    /// <summary> رمز الحساب للرسالة المصرفية </summary>
    public string? CRDAcodeRecLetter { get; private set; }
    /// <summary> حساب عمولة البطاقة المصرفية </summary>
    public string? CRDCommAccount { get; private set; }
    /// <summary> نوع حساب العمولة </summary>
    public bool? CRDCommCalcType { get; private set; }
    /// <summary> نسبة العمولة </summary>
    public int? CRDCommPercent { get; private set; }
    /// <summary> نسبة ضريبة القيمة المضافة للعمولة </summary>
    public int? CRDVatCommPercent { get; private set; }
    /// <summary> فترة استحقاق البطاقة المصرفية </summary>
    public int? CRDDuePeriod { get; private set; }
    /// <summary> رقم العملية المصرفية </summary>
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
    /// <summary> رقم المستخدم الذي أضاف السطر </summary>
    public int? AddedByUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> رقم المستخدم الذي عدل السطر </summary>
    public int? UpdatedByUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> عدد مرات التعديل </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> رقم الشركة </summary>
    public short CompanyNo { get; private set; }
    /// <summary> رقم الفرع </summary>
    public int BranchNo { get; private set; }
    /// <summary> السنة المالية للفرع </summary>
    public short? BranchYear { get; private set; }
    /// <summary> مستخدم الفرع </summary>
    public short? BranchUser { get; private set; }
    /// <summary> مبلغ عمولة البطاقة المحلية </summary>
    public int? CRDCommAmtLocal { get; private set; }
    /// <summary> مبلغ ضريبة العمولة المحلية </summary>
    public int? CRDVatCommAmtLocal { get; private set; }
    /// <summary> مبلغ السحب المحلي </summary>
    public int? CRDWthdrwAmtLocal { get; private set; }
    /// <summary> نوع البطاقة المصرفية </summary>
    public short? CRDCardType { get; private set; }
    /// <summary> تاريخ التظهير </summary>
    public DateTime? EndorsementDate { get; private set; }
    /// <summary> حالة الترحيل للتظهير </summary>
    public short? EndorsementPost { get; private set; }
    /// <summary> رقم المستخدم لترحيل التظهير </summary>
    public int? EndorsementPostUser { get; private set; }
    /// <summary> رقم المستخدم لإلغاء ترحيل التظهير </summary>
    public int? EndorsementUnpostUser { get; private set; }
    /// <summary> تاريخ ترحيل التظهير </summary>
    public DateTime? EndorsementPostDate { get; private set; }
    /// <summary> تاريخ إلغاء ترحيل التظهير </summary>
    public DateTime? EndorsementUnpostDate { get; private set; }
    /// <summary> رقم المستخدم لمرجع تدقيق التظهير </summary>
    public int? EndorsementAuditRefUser { get; private set; }
    /// <summary> مرجع تدقيق التظهير </summary>
    public bool? EndorsementAuditRef { get; private set; }
    /// <summary> وصف مرجع تدقيق التظهير </summary>
    public string? EndorsementAuditRefDesc { get; private set; }
    /// <summary> تاريخ تدقيق المستخدم التظهير </summary>
    public DateTime? EndorsementUAuditRefDate { get; private set; }
    /// <summary> تاريخ مرجع تدقيق التظهير </summary>
    public DateTime? EndorsementAuditRefDate { get; private set; }
    /// <summary> نوع الحساب الضريبي </summary>
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