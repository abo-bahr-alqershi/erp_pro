public class SEmpCodeDtl
{
    public short CodeTyp { get; private set; }
    public long CodeNo { get; private set; }
    public string CodeLNm { get; private set; }
    public string? CodeFNm { get; private set; }
    public bool? Inactive { get; private set; }
    public string? InactiveRes { get; private set; }
    public DateTime? InactiveDate { get; private set; }
    public long? InactiveUId { get; private set; }
    public long? OrdrNo { get; private set; }
    public string? Notes { get; private set; }
    public short? ShwEmpInEss { get; private set; }
    public int? AdUId { get; private set; }
    public DateTime AdDate { get; private set; }
    public int? UpUId { get; private set; }
    public DateTime? UpDate { get; private set; }
    public long? UpCnt { get; private set; }
    public string? AdTrmnlNm { get; private set; }
    public string? UpTrmnlNm { get; private set; }
    public long? EmpNoSqBgn { get; private set; }
    public long? EmpNoSqEnd { get; private set; }
}