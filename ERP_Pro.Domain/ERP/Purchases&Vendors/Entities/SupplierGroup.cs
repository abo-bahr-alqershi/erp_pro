public class SupplierGroup
{
    /// <summary> كود مجموعة المورد </summary>
    public long? GroupCode { get; private set; }
    /// <summary> اسم المجموعة عربي </summary>
    public string? GroupArabicName { get; private set; }
    /// <summary> اسم المجموعة إنجليزي </summary>
    public string? GroupEnglishName { get; private set; }
    /// <summary> كود الحساب المحاسبي للمجموعة </summary>
    public string GroupAccountCode { get; private set; }
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
    /// <summary> أولوية التقرير </summary>
    public long? ReportPriority { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public bool VoucherPayType { get; private set; }
    public long VoucherNo { get; private set; }
    public long CashNo { get; private set; }
    public string ACy { get; private set; }
    public long? VSer { get; private set; }
    public DateTime VoucherDate { get; private set; }
    public int? CashAmt { get; private set; }
    public int? CashAmtf { get; private set; }
    public int? ExRate { get; private set; }
    public bool? VoucherPost { get; private set; }
    public string? RefNo { get; private set; }
    public string? RefName { get; private set; }
    public string? ADesc { get; private set; }
    public string? RecName { get; private set; }
    public bool? StandBy { get; private set; }
    public int? Transfer { get; private set; }
    public int? CheqType { get; private set; }
    public long? ColNo { get; private set; }
    public string? CcCode { get; private set; }
    public string? PjNo { get; private set; }
    public string? ActvNo { get; private set; }
    public short? AttachNo { get; private set; }
    /// <summary> أولوية التقرير </summary>
    public long? ReportPriority { get; private set; }
    public decimal? CommPer { get; private set; }
    public long? VoucherNoPy { get; private set; }
    public DateTime? VoucherDatePy { get; private set; }
    public bool? MoveCheqPy { get; private set; }
    public bool? MoveCheqCy { get; private set; }
    public short? VTypeNo { get; private set; }
    public int? ExternalPost { get; private set; }
    public bool? AuditRef { get; private set; }
    public string? AuditRefDesc { get; private set; }
    public int? AuditRefUId { get; private set; }
    public DateTime? AuditRefDate { get; private set; }
    public string? Field1 { get; private set; }
    public string? Field2 { get; private set; }
    public string? Field3 { get; private set; }
    public string? Field4 { get; private set; }
    public string? Field5 { get; private set; }
    public string? Field6 { get; private set; }
    public string? Field7 { get; private set; }
    public string? Field8 { get; private set; }
    public string? Field9 { get; private set; }
    public string? Field10 { get; private set; }
    public int? PostUId { get; private set; }
    public DateTime? PostDate { get; private set; }
    public int? UnpostUId { get; private set; }
    public DateTime? UnpostDate { get; private set; }
    public long? DocSequence { get; private set; }
    public int? DocBrnNo { get; private set; }
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
    public short CmpNo { get; private set; }
    public int BrnNo { get; private set; }
    public short? BrnYear { get; private set; }
    public short? BrnUsr { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public string? DocSerExtrnl { get; private set; }
    public string? RepCode { get; private set; }
    public string? AcCodeDtl { get; private set; }
    public short? AcDtlTyp { get; private set; }
    public Account Account { get; private set; } // Navigation
}