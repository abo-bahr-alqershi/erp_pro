public class IasCommCrCardBank
{
    public long? BankNo { get; private set; }
    public short? CrCardType { get; private set; }
    public int? CommPer { get; private set; }
    public short? DuePeriod { get; private set; }
    public int? AdUId { get; private set; }
    public DateTime? AdDate { get; private set; }
    public int? UpUId { get; private set; }
    public DateTime? UpDate { get; private set; }
    public long? UpCnt { get; private set; }
    public long? PrRep { get; private set; }
    public string? AdTrmnlNm { get; private set; }
    public string? UpTrmnlNm { get; private set; }
    public int? MaxCommPer { get; private set; }
    public int? MaxCommAmt { get; private set; }
    public string? ACyMaxComm { get; private set; }
    public int? CommAmt { get; private set; }
}