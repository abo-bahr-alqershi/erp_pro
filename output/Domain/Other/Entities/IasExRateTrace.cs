public class IasExRateTrace
{
    public short CurNo { get; private set; }
    public string? CurCode { get; private set; }
    public int? CurRate { get; private set; }
    public int? MaxCurRate { get; private set; }
    public int? MinCurRate { get; private set; }
    public int? UpUId { get; private set; }
    public DateTime? UpDate { get; private set; }
    public long? UpCnt { get; private set; }
    public long? PrRep { get; private set; }
    public string? AdTrmnlNm { get; private set; }
    public string? UpTrmnlNm { get; private set; }
}