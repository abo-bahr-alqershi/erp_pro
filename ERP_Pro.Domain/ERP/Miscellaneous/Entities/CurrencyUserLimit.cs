public class CurrencyUserLimit
{
    /// <summary> كود العملة </summary>
    public string? CurrencyCode { get; private set; }
    /// <summary> رقم المستخدم </summary>
    public int? UserNo { get; private set; }
    /// <summary> الحد الأعلى لسعر الصرف </summary>
    public int? MaxCurrencyRate { get; private set; }
    /// <summary> الحد الأدنى لسعر الصرف </summary>
    public int? MinCurrencyRate { get; private set; }
    /// <summary> سعر الصرف الحالي </summary>
    public int? CurrencyRate { get; private set; }
    /// <summary> الحد الأدنى لسعر دفع العملة </summary>
    public int? MinPaymentRate { get; private set; }
    /// <summary> الحد الأعلى لسعر دفع العملة </summary>
    public int? MaxPaymentRate { get; private set; }
    /// <summary> الحد الأدنى لسعر استلام العملة </summary>
    public int? MinReceivedRate { get; private set; }
    /// <summary> الحد الأعلى لسعر استلام العملة </summary>
    public int? MaxReceivedRate { get; private set; }
    /// <summary> ربط الفرع </summary>
    public int? ConnectBranchNo { get; private set; }
    /// <summary> المستخدم الذي أضاف </summary>
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> المستخدم الذي عدل </summary>
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ التعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> أولوية التقرير </summary>
    public int? ReportPriority { get; private set; }
    /// <summary> عدد مرات التحديث </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> جهاز الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> جهاز التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public bool? BdgtPrdType { get; private set; }
    public long? RcrdNo { get; private set; }
    public long? DocNo { get; private set; }
    public long? DocSer { get; private set; }
    public int PrdNo { get; private set; }
    public DateTime? FDate { get; private set; }
    public DateTime? TDate { get; private set; }
    public string? ACode { get; private set; }
    public string ACy { get; private set; }
    public string? CcCode { get; private set; }
    public string? PjNo { get; private set; }
    public string? ActvNo { get; private set; }
    public long? AmtLAdd { get; private set; }
    public long? AmtFAdd { get; private set; }
    public long? AmtLDisc { get; private set; }
    public long? AmtFDisc { get; private set; }
    public long? AcRate { get; private set; }
    public string? DocDesc { get; private set; }
    public long? DocNoRef { get; private set; }
    public long? DocSerRef { get; private set; }
    public short CmpNo { get; private set; }
    public int BrnNo { get; private set; }
    public short? BrnYear { get; private set; }
    public short? BrnUsr { get; private set; }
    /// <summary> عدد مرات التحديث </summary>
    public long? UpdateCount { get; private set; }
    public string? AcCodeDtl { get; private set; }
    public short? AcDtlTyp { get; private set; }
    public long? DocSer { get; private set; }
    public DateTime? DocDate { get; private set; }
    public string ACy { get; private set; }
    public string? DocDesc { get; private set; }
    public string? DocNote { get; private set; }
    public string? RefNo { get; private set; }
    public bool? BdgtPrdType { get; private set; }
    /// <summary> المستخدم الذي أضاف </summary>
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> المستخدم الذي عدل </summary>
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ التعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public long? DocNoRef { get; private set; }
    public long? DocSerRef { get; private set; }
    public bool? Approved { get; private set; }
    public int? AprvUId { get; private set; }
    public DateTime? AprvDate { get; private set; }
    public string? AprvDsc { get; private set; }
    public short CmpNo { get; private set; }
    public int BrnNo { get; private set; }
    public short? BrnYear { get; private set; }
    public short? BrnUsr { get; private set; }
    /// <summary> أولوية التقرير </summary>
    public int? ReportPriority { get; private set; }
    /// <summary> عدد مرات التحديث </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> جهاز الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> جهاز التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public CurrencyExchangeRate CurrencyExchangeRate { get; private set; } // Navigation
    public User User { get; private set; } // Navigation
}