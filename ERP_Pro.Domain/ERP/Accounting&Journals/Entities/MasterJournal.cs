public class MasterJournal
{
    /// <summary> نوع القيد الرئيسي </summary>
    public short JVType { get; private set; }
    /// <summary> رقم المستند الرئيسي </summary>
    public long JDocNo { get; private set; }
    /// <summary> الرقم التسلسلي </summary>
    public long? JSerial { get; private set; }
    /// <summary> حالة الترحيل (1=مرحل) </summary>
    public bool? JPost { get; private set; }
    /// <summary> تاريخ القيد </summary>
    public DateTime JDate { get; private set; }
    /// <summary> قيمة الدفعة </summary>
    public int? BatchVal { get; private set; }
    /// <summary> رقم مرجعي إضافي </summary>
    public string? RefNo { get; private set; }
    /// <summary> علم يوضح إذا كان القيد عكسي </summary>
    public bool? RevrsJrnl { get; private set; }
    /// <summary> علم يوضح إذا كان القيد دوري </summary>
    public bool? PeriodicalJrnl { get; private set; }
    /// <summary> احتياطي نقدي </summary>
    public bool? CashReserve { get; private set; }
    /// <summary> قيد احتياطي </summary>
    public bool? StandBy { get; private set; }
    /// <summary> استخدام الربط </summary>
    public bool? LinkUse { get; private set; }
    /// <summary> رقم المرفق </summary>
    public short? AttachNo { get; private set; }
    /// <summary> اسم المستفيد </summary>
    public string? BenName { get; private set; }
    /// <summary> اسم المستلم </summary>
    public string? RecName { get; private set; }
    /// <summary> وصف القيد الرئيسي </summary>
    public string? TDesc { get; private set; }
    /// <summary> مرجع التدقيق </summary>
    public bool? AuditRef { get; private set; }
    /// <summary> وصف مرجع التدقيق </summary>
    public string? AuditRefDesc { get; private set; }
    /// <summary> رقم المستخدم لمرجع التدقيق </summary>
    public int? AuditRefUserId { get; private set; }
    /// <summary> تاريخ مرجع التدقيق </summary>
    public DateTime? AuditRefDate { get; private set; }
    /// <summary> أولوية التقرير </summary>
    public long? ReportPriority { get; private set; }
    /// <summary> إغلاق الأرصدة الصفرية </summary>
    public bool? ClsZeroAcBlc { get; private set; }
    /// <summary> علم الترحيل الخارجي </summary>
    public int? ExternalPost { get; private set; }
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
    /// <summary> رقم المستخدم الذي رحل </summary>
    public int? PostUserId { get; private set; }
    /// <summary> تاريخ الترحيل </summary>
    public DateTime? PostDate { get; private set; }
    /// <summary> رقم المستخدم الذي ألغى الترحيل </summary>
    public int? UnpostUserId { get; private set; }
    /// <summary> تاريخ إلغاء الترحيل </summary>
    public DateTime? UnpostDate { get; private set; }
    /// <summary> حقل إضافي </summary>
    public string? Field1 { get; private set; }
    /// <summary> حقل إضافي </summary>
    public string? Field2 { get; private set; }
    /// <summary> حقل إضافي </summary>
    public string? Field3 { get; private set; }
    /// <summary> حقل إضافي </summary>
    public string? Field4 { get; private set; }
    /// <summary> حقل إضافي </summary>
    public string? Field5 { get; private set; }
    /// <summary> حقل إضافي </summary>
    public string? Field6 { get; private set; }
    /// <summary> حقل إضافي </summary>
    public string? Field7 { get; private set; }
    /// <summary> حقل إضافي </summary>
    public string? Field8 { get; private set; }
    /// <summary> حقل إضافي </summary>
    public string? Field9 { get; private set; }
    /// <summary> حقل إضافي </summary>
    public string? Field10 { get; private set; }
    /// <summary> رقم الشركة </summary>
    public short CompanyNo { get; private set; }
    /// <summary> رقم الفرع </summary>
    public int BranchNo { get; private set; }
    /// <summary> سنة الفرع </summary>
    public short? BranchYear { get; private set; }
    /// <summary> مستخدم الفرع </summary>
    public short? BranchUser { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public ICollection<JournalDetail> JournalDetails { get; private set; } // Inverse Navigation
    public ICollection<JournalDetailBranch> JournalDetailBranchs { get; private set; } // Inverse Navigation
}