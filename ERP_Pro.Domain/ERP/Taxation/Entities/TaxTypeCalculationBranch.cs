public class TaxTypeCalculationBranch
{
    /// <summary> رقم نوع احتساب الضريبة </summary>
    public int CalcTypeNo { get; private set; }
    /// <summary> رقم الفرع </summary>
    public int BranchNo { get; private set; }
    /// <summary> تاريخ التفعيل </summary>
    public DateTime ActiveDate { get; private set; }
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
    /// <summary> تاريخ الانتهاء </summary>
    public DateTime? ExpireDate { get; private set; }
    /// <summary> فترة التحويل </summary>
    public bool? TransferPeriod { get; private set; }
    /// <summary> تاريخ بداية فترة التحويل </summary>
    public DateTime? StartTransferPeriod { get; private set; }
    /// <summary> تاريخ نهاية فترة التحويل </summary>
    public DateTime? EndTransferPeriod { get; private set; }
    public TaxTypeCalculationMaster TaxTypeCalculationMaster { get; private set; } // Navigation
}