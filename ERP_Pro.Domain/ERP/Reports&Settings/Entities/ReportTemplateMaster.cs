public class ReportTemplateMaster
{
    public int? FormNo { get; private set; }
    public int? UId { get; private set; }
    public long? TmpltNo { get; private set; }
    public long OrdrNo { get; private set; }
    public string? Notes { get; private set; }
    public bool Inactive { get; private set; }
    public string? InactiveRes { get; private set; }
    public long? InactiveUId { get; private set; }
    public DateTime? InactiveDate { get; private set; }
    public long AdUId { get; private set; }
    public DateTime AdDate { get; private set; }
    public string? AdTrmnlNm { get; private set; }
    public long? UpUId { get; private set; }
    public DateTime? UpDate { get; private set; }
    public long? UpCnt { get; private set; }
    public string? UpTrmnlNm { get; private set; }
    public string? TmpltNm { get; private set; }
    public bool? DfltFlg { get; private set; }
    public bool? GnrForAllUsrFlg { get; private set; }
    public ICollection<ReportTemplateDetail> ReportTemplateDetails { get; private set; } // Inverse Navigation
}