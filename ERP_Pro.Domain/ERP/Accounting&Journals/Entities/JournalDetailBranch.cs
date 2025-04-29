public class JournalDetailBranch
{
    /// <summary> رقم نوع القيد المحاسبي </summary>
    public short JVType { get; private set; }
    /// <summary> رقم المستند المحاسبي </summary>
    public long JDocNo { get; private set; }
    /// <summary> الرقم التسلسلي للسطر </summary>
    public long? JSerial { get; private set; }
    /// <summary> كود الحساب </summary>
    public string AccountCode { get; private set; }
    /// <summary> كود التفاصيل للحساب </summary>
    public string? AccountDtlCode { get; private set; }
    /// <summary> نوع التفاصيل للحساب </summary>
    public short? AccountDtlType { get; private set; }
    /// <summary> رمز العملة </summary>
    public string? CurrencyCode { get; private set; }
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
    /// <summary> رقم المحصل </summary>
    public long? CollectorNo { get; private set; }
    /// <summary> رقم الاعتماد المستندي </summary>
    public string? LCNo { get; private set; }
    /// <summary> رقم أمر التوريد/الإصدار </summary>
    public string? GRNo { get; private set; }
    /// <summary> رقم الصندوق أو البنك </summary>
    public long? CashBankNo { get; private set; }
    /// <summary> رقم السطر في القيد </summary>
    public long? RecordNo { get; private set; }
    /// <summary> رقم السطر الترتيبي </summary>
    public long? RecordNoOrd { get; private set; }
    /// <summary> نوع المستند المرجعي </summary>
    public int? DocTypeRef { get; private set; }
    /// <summary> نوع القيد المرجعي </summary>
    public int? DocJVTypeRef { get; private set; }
    /// <summary> رقم المستند المرجعي </summary>
    public long? DocNoRef { get; private set; }
    /// <summary> الرقم التسلسلي للمستند المرجعي </summary>
    public long? DocSerRef { get; private set; }
    /// <summary> تاريخ الاستحقاق للمستند المرجعي </summary>
    public DateTime? DocDueDate { get; private set; }
    /// <summary> رقم الفاتورة </summary>
    public long? BillNo { get; private set; }
    /// <summary> الرقم التسلسلي للفاتورة </summary>
    public long? BillSer { get; private set; }
    /// <summary> رقم أمين الصندوق </summary>
    public int? CashierNo { get; private set; }
    /// <summary> رقم العنصر </summary>
    public long? INo { get; private set; }
    /// <summary> رقم أمر العمل </summary>
    public long? WONo { get; private set; }
    /// <summary> الرقم التسلسلي لأمر العمل </summary>
    public long? WOSer { get; private set; }
    /// <summary> رقم مرجعي إضافي </summary>
    public string? RefNo { get; private set; }
    /// <summary> رقم الشيك </summary>
    public long? ChequeNo { get; private set; }
    /// <summary> رقم الإشعار/الملاحظة </summary>
    public string? NoteNo { get; private set; }
    /// <summary> تسلسل المستند </summary>
    public long? DocSequence { get; private set; }
    /// <summary> علم الترحيل الخارجي </summary>
    public int? ExternalPost { get; private set; }
    /// <summary> رقم فرع المستند </summary>
    public int? DocBranchNo { get; private set; }
    /// <summary> ملاحظات </summary>
    public string? Note { get; private set; }
    /// <summary> رقم المستخدم الذي أنشأ السطر </summary>
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
    public short? CompanyNo { get; private set; }
    /// <summary> رقم الفرع </summary>
    public int? BranchNo { get; private set; }
    /// <summary> سنة الفرع </summary>
    public short? BranchYear { get; private set; }
    /// <summary> مستخدم الفرع </summary>
    public short? BranchUser { get; private set; }
    /// <summary> رقم العقد </summary>
    public long? ContractNo { get; private set; }
    /// <summary> السيريال للعقد </summary>
    public int? ContractSerial { get; private set; }
    /// <summary> دفعة العقد </summary>
    public int? ContractBatch { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public MasterJournal MasterJournal { get; private set; } // Navigation
}