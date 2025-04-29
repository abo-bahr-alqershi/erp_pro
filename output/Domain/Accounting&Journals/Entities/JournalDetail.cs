public class JournalDetail
{
    public short JVType { get; private set; }
    public long JDocNo { get; private set; }
    public long? JSerial { get; private set; }
    /// <summary> كود الحساب </summary>
    public string AccountCode { get; private set; }
    /// <summary> كود التفاصيل للحساب </summary>
    public string? AccountDtlCode { get; private set; }
    /// <summary> كود التفاصيل الفرعية للحساب </summary>
    public string? AccountDtlSub { get; private set; }
    public short? AccountDtlType { get; private set; }
    /// <summary> رمز العملة </summary>
    public string CurrencyCode { get; private set; }
    /// <summary> وصف السطر المحاسبي </summary>
    public string? JDesc { get; private set; }
    /// <summary> المبلغ المحاسبي بالعملة المحلية </summary>
    public int? JAmount { get; private set; }
    /// <summary> المبلغ بالعملة الأجنبية </summary>
    public int? JAmountForeign { get; private set; }
    /// <summary> سعر صرف الحساب </summary>
    public int? AccountRate { get; private set; }
    /// <summary> كود مركز التكلفة </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> رقم المشروع المرتبط بالسطر </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> رقم النشاط </summary>
    public string? ActivityNo { get; private set; }
    /// <summary> كود العميل </summary>
    public string? CCode { get; private set; }
    /// <summary> كود المورد </summary>
    public string? VCode { get; private set; }
    /// <summary> كود التقرير </summary>
    public string? ReportCode { get; private set; }
    public long? CollectorNo { get; private set; }
    /// <summary> رقم الاعتماد المستندي </summary>
    public string? LCNo { get; private set; }
    /// <summary> رقم أمر التوريد/الإصدار </summary>
    public string? GRNo { get; private set; }
    public long? CashBankNo { get; private set; }
    public long? RecordNo { get; private set; }
    public long? RecordNoOrd { get; private set; }
    public int? DocTypeRef { get; private set; }
    public int? DocJVTypeRef { get; private set; }
    public long? DocNoRef { get; private set; }
    public long? DocSerRef { get; private set; }
    /// <summary> تاريخ الاستحقاق للمستند المرجعي </summary>
    public DateTime? DocDueDate { get; private set; }
    public long? BillNo { get; private set; }
    public long? BillSer { get; private set; }
    public int? CashierNo { get; private set; }
    public long? INo { get; private set; }
    public long? WONo { get; private set; }
    public long? WOSer { get; private set; }
    /// <summary> رقم مرجعي إضافي </summary>
    public string? RefNo { get; private set; }
    public long? ContractNo { get; private set; }
    /// <summary> السيريال للعقد </summary>
    public int? ContractSerial { get; private set; }
    public int? ContractBatch { get; private set; }
    public long? ChequeNo { get; private set; }
    /// <summary> رقم الإشعار/الملاحظة </summary>
    public string? NoteNo { get; private set; }
    public long? DocSequence { get; private set; }
    public int? ExternalPost { get; private set; }
    public int? DocBranchNo { get; private set; }
    /// <summary> ملاحظات </summary>
    public string? Note { get; private set; }
    public long? DocSequenceRef { get; private set; }
    public long? RecordNoRef { get; private set; }
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
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public int? CalcTypeNoTax { get; private set; }
    /// <summary> نسبة الضريبة </summary>
    public int? TaxPercent { get; private set; }
    /// <summary> مبلغ الضريبة </summary>
    public int? TaxAmount { get; private set; }
    /// <summary> نوع المستند للموارد البشرية </summary>
    public int? HrsDocTypeRef { get; private set; }
    /// <summary> الرقم التسلسلي للمستند للموارد البشرية </summary>
    public int? HrsDocSerRef { get; private set; }
    /// <summary> رقم المستند للموارد البشرية </summary>
    public int? HrsDocNoRef { get; private set; }
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
    public AccountCurrency AccountCurrency { get; private set; } // Navigation
    public Project Project { get; private set; } // Navigation
    public Customer Customer { get; private set; } // Navigation
    public MasterJournal MasterJournal { get; private set; } // Navigation
}