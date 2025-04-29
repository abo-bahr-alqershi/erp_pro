public class SConnCntct
{
    public int? ConnCntctNo { get; private set; }
    public long? CntctCode { get; private set; }
    public short? CntctTyp { get; private set; }
    public short? CntctNo { get; private set; }
    public string? CntctDsc { get; private set; }
    public long? OrdrNo { get; private set; }
    public string? Notes { get; private set; }
    public bool? CntctFvrt { get; private set; }
    public bool Inactv { get; private set; }
    public string? InactvRson { get; private set; }
    public long? InactvUsr { get; private set; }
    public DateTime? InactvDate { get; private set; }
    public long AdUId { get; private set; }
    public DateTime AdDate { get; private set; }
    public long? UpUId { get; private set; }
    public DateTime? UpDate { get; private set; }
    public long? UpCnt { get; private set; }
    public long? PrRep { get; private set; }
    public string? AdTrmnlNm { get; private set; }
    public string? UpTrmnlNm { get; private set; }
}