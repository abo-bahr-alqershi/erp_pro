public class MasterJournalBranch
{
    public short JVType { get; private set; }
    public long JDocNo { get; private set; }
    public long? JSerial { get; private set; }
    public bool? JPost { get; private set; }
    /// <summary> تاريخ القيد </summary>
    public DateTime JDate { get; private set; }
    /// <summary> قيمة الدفعة </summary>
    public int? BatchVal { get; private set; }
    /// <summary> رقم مرجعي إضافي </summary>
    public string? RefNo { get; private set; }
    public bool? RevrsJrnl { get; private set; }
    public bool? PeriodicalJrnl { get; private set; }
    public bool? CashReserve { get; private set; }
    public bool? StandBy { get; private set; }
    public bool? LinkUse { get; private set; }
    public short? AttachNo { get; private set; }
    /// <summary> اسم المستفيد </summary>
    public string? BenName { get; private set; }
    /// <summary> اسم المستلم </summary>
    public string? RecName { get; private set; }
    /// <summary> وصف القيد </summary>
    public string? TDesc { get; private set; }
    public bool? AuditRef { get; private set; }
    /// <summary> وصف مرجع التدقيق </summary>
    public string? AuditRefDesc { get; private set; }
    public int? AuditRefUserId { get; private set; }
    /// <summary> تاريخ مرجع التدقيق </summary>
    public DateTime? AuditRefDate { get; private set; }
    public long? ReportPriority { get; private set; }
    public bool? ClsZeroAcBlc { get; private set; }
    public int? ExternalPost { get; private set; }
    public int? AddedByUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    public int? UpdatedByUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public long? UpdateCount { get; private set; }
    public int? PostUserId { get; private set; }
    /// <summary> تاريخ الترحيل </summary>
    public DateTime? PostDate { get; private set; }
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
    public short? CompanyNo { get; private set; }
    public int? BranchNo { get; private set; }
    public short? BranchYear { get; private set; }
    public short? BranchUser { get; private set; }
}