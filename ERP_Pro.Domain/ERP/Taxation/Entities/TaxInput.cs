public class TaxInput
{
    /// <summary> نوع الإدخال </summary>
    public short InputType { get; private set; }
    /// <summary> كود الإدخال أو رقم العملية </summary>
    public string InputCode { get; private set; }
    /// <summary> رقم الضريبة </summary>
    public int TaxNo { get; private set; }
    /// <summary> رقم الجهة </summary>
    public int AgencyNo { get; private set; }
    /// <summary> نسبة الضريبة </summary>
    public int TaxPercent { get; private set; }
    /// <summary> المستخدم الذي أضاف السطر </summary>
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> المستخدم الذي عدل السطر </summary>
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> أولوية التقرير </summary>
    public int? ReportPriority { get; private set; }
    /// <summary> عدد مرات التحديث </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public short? BillDocType { get; private set; }
    public int? DocJvType { get; private set; }
    public long? DocNo { get; private set; }
    public long DocSer { get; private set; }
    public DateTime DocDate { get; private set; }
    /// <summary> رقم الضريبة </summary>
    public int TaxNo { get; private set; }
    public int ClcTypNo { get; private set; }
    /// <summary> رقم الجهة </summary>
    public int AgencyNo { get; private set; }
    /// <summary> نوع الإدخال </summary>
    public short InputType { get; private set; }
    /// <summary> كود الإدخال أو رقم العملية </summary>
    public string InputCode { get; private set; }
    public string ACode { get; private set; }
    public string ACy { get; private set; }
    public int AcRate { get; private set; }
    public int? InptAmt { get; private set; }
    /// <summary> نسبة الضريبة </summary>
    public int TaxPercent { get; private set; }
    public int TaxAmt { get; private set; }
    public int? TaxAmtL { get; private set; }
    public string? CcCode { get; private set; }
    public string? PjNo { get; private set; }
    public string? ActvNo { get; private set; }
    public string? RefNo { get; private set; }
    public long? RcrdNo { get; private set; }
    public long? DocSequence { get; private set; }
    public int? ExternalPost { get; private set; }
    public short CmpNo { get; private set; }
    public int BrnNo { get; private set; }
    public short? BrnYear { get; private set; }
    public short? BrnUsr { get; private set; }
    /// <summary> عدد مرات التحديث </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> أولوية التقرير </summary>
    public long? ReportPriority { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public TaxCodeDetail TaxCodeDetail { get; private set; } // Navigation
}