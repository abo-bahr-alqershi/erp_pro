public class TaxTypeCalculationBranch
{
    public int CalcTypeNo { get; private set; }
    public int BranchNo { get; private set; }
    /// <summary> تاريخ التفعيل </summary>
    public DateTime ActiveDate { get; private set; }
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public int? ReportPriority { get; private set; }
    public long? UpdateCount { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    /// <summary> تاريخ الانتهاء </summary>
    public DateTime? ExpireDate { get; private set; }
    public bool? TransferPeriod { get; private set; }
    /// <summary> تاريخ بداية فترة التحويل </summary>
    public DateTime? StartTransferPeriod { get; private set; }
    /// <summary> تاريخ نهاية فترة التحويل </summary>
    public DateTime? EndTransferPeriod { get; private set; }
    public TaxTypeCalculationMaster TaxTypeCalculationMaster { get; private set; } // Navigation
}