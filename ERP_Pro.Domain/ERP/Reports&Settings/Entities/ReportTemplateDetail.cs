public class ReportTemplateDetail
{
    public int? FormNo { get; private set; }
    public int? UId { get; private set; }
    public long? TmpltNo { get; private set; }
    public string? BlkNm { get; private set; }
    public string? ItmNm { get; private set; }
    public string? Val { get; private set; }
    public int? SqNo { get; private set; }
    public string? Notes { get; private set; }
    public int? AdUId { get; private set; }
    public DateTime AdDate { get; private set; }
    public string? AdTrmnlNm { get; private set; }
    public int? UpUId { get; private set; }
    public DateTime? UpDate { get; private set; }
    public long? UpCnt { get; private set; }
    public string? UpTrmnlNm { get; private set; }
    public ReportTemplateMaster ReportTemplateMaster { get; private set; } // Navigation
}