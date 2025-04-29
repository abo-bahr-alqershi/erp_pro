public class ReportTemplateDetail
{
    public int? FormNo { get; private set; }
    public int? UserId { get; private set; }
    public long? TemplateNo { get; private set; }
    /// <summary> اسم البلوك/الجزء </summary>
    public string? BlockName { get; private set; }
    /// <summary> اسم العنصر </summary>
    public string? ItemName { get; private set; }
    /// <summary> القيمة </summary>
    public string? Value { get; private set; }
    public int? SequenceNo { get; private set; }
    /// <summary> ملاحظات </summary>
    public string? Notes { get; private set; }
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime AddedDate { get; private set; }
    /// <summary> الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public long? UpdateCount { get; private set; }
    /// <summary> الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public ReportTemplateMaster ReportTemplateMaster { get; private set; } // Navigation
}