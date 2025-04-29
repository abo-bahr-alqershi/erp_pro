public class ReportTemplateMaster
{
    public int? FormNo { get; private set; }
    public int? UserId { get; private set; }
    public long? TemplateNo { get; private set; }
    public long OrderNo { get; private set; }
    /// <summary> ملاحظات </summary>
    public string? Notes { get; private set; }
    public bool Inactive { get; private set; }
    /// <summary> سبب التعطيل </summary>
    public string? InactiveReason { get; private set; }
    public long? InactiveUserId { get; private set; }
    /// <summary> تاريخ التعطيل </summary>
    public DateTime? InactiveDate { get; private set; }
    public long AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime AddedDate { get; private set; }
    /// <summary> الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    public long? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public long? UpdateCount { get; private set; }
    /// <summary> الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    /// <summary> اسم القالب </summary>
    public string? TemplateName { get; private set; }
    public bool? DefaultFlag { get; private set; }
    public bool? GenerateForAllUsers { get; private set; }
    public ICollection<ReportTemplateDetail> ReportTemplateDetails { get; private set; } // Inverse Navigation
}