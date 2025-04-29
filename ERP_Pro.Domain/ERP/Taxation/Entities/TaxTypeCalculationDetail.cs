public class TaxTypeCalculationDetail
{
    /// <summary> رقم نوع احتساب الضريبة </summary>
    public int CalcTypeNo { get; private set; }
    /// <summary> رقم الضريبة المرتبط </summary>
    public int TaxNo { get; private set; }
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
    public string ClcTypLNm { get; private set; }
    public string? ClcTypFNm { get; private set; }
    public int? ClcTypDfltFlg { get; private set; }
    public short? ClcTaxTyp { get; private set; }
    public bool? PurExpns { get; private set; }
    public bool? FasSysFlg { get; private set; }
    public bool? RemSysFlg { get; private set; }
    public bool? PmsSysFlg { get; private set; }
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
    public int? ClcTypNoExmpt { get; private set; }
    public bool? Inactive { get; private set; }
    public int? InactiveUId { get; private set; }
    public DateTime? InactiveDate { get; private set; }
    public string? InactiveRes { get; private set; }
    public bool? TrnsPrd { get; private set; }
    public int? ClcTypNoTrnsprd { get; private set; }
    public string? TaxCode { get; private set; }
    public TaxTypeCalculationMaster TaxTypeCalculationMaster { get; private set; } // Navigation
}