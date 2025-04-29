public class BankChequeMaster
{
    /// <summary> رقم البنك </summary>
    public long? BankNo { get; private set; }
    /// <summary> رقم دفتر الشيكات </summary>
    public long BookNo { get; private set; }
    /// <summary> أول رقم شيك في الدفتر </summary>
    public long? FirstChequeNo { get; private set; }
    /// <summary> آخر رقم شيك في الدفتر </summary>
    public long? LastChequeNo { get; private set; }
    /// <summary> رقم مرجعي إضافي </summary>
    public string? ReferenceNo { get; private set; }
    /// <summary> رمز العملة </summary>
    public string? CurrencyCode { get; private set; }
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
    public long? DocNo { get; private set; }
    public long DocSrl { get; private set; }
    public long? DocMSq { get; private set; }
    public long? DocDSq { get; private set; }
    public long? RcrdNo { get; private set; }
    public string? AcCode { get; private set; }
    public string? AcCodeDtl { get; private set; }
    public short? AcDtlTyp { get; private set; }
    /// <summary> رمز العملة </summary>
    public string? CurrencyCode { get; private set; }
    public long? ChqNo { get; private set; }
    public DateTime? ChqDate { get; private set; }
    public int? DrAmt { get; private set; }
    public int? CrAmt { get; private set; }
    public string? NtNoBnk { get; private set; }
    /// <summary> رقم مرجعي إضافي </summary>
    public string? ReferenceNo { get; private set; }
    public string? DocDDsc { get; private set; }
    public bool? IdntfFlg { get; private set; }
    public bool? IdntfMnlFlg { get; private set; }
    /// <summary> المستخدم الذي أضاف السطر </summary>
    public int AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime AddedDate { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> المستخدم الذي عدل السطر </summary>
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    /// <summary> عدد مرات التحديث </summary>
    public long? UpdateCount { get; private set; }
    public int BrnNo { get; private set; }
    public short BrnYear { get; private set; }
    public short? BrnUsr { get; private set; }
    public string? CcCode { get; private set; }
    public string? PjNo { get; private set; }
    public string? ActvNo { get; private set; }
    public int? DocTypRef { get; private set; }
    public long? DocNoRef { get; private set; }
    public long? DocSrlRef { get; private set; }
    public long? DocDSqRef { get; private set; }
    public ICollection<BankChequeDetail> BankChequeDetails { get; private set; } // Inverse Navigation
}