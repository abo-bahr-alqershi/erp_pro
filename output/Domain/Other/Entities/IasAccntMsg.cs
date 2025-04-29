public class IasAccntMsg
{
    public string? ACode { get; private set; }
    public string? MobileNo { get; private set; }
    public string? EMail { get; private set; }
    public bool? MovTyp { get; private set; }
    public bool? TrnsTyp { get; private set; }
    public bool? SendTyp { get; private set; }
    public bool? PstTyp { get; private set; }
    public int? BlncAmt { get; private set; }
    public bool? Inactv { get; private set; }
    public DateTime? InactvDate { get; private set; }
    public int? InactvUsrNo { get; private set; }
    public string? InactvRson { get; private set; }
    public int? AdUId { get; private set; }
    public DateTime? AdDate { get; private set; }
    public int? UpUId { get; private set; }
    public DateTime? UpDate { get; private set; }
    public short CmpNo { get; private set; }
    public int BrnNo { get; private set; }
    public short? BrnYear { get; private set; }
    public short? BrnUsr { get; private set; }
    public long? UpCnt { get; private set; }
    public long? PrRep { get; private set; }
    public string? AdTrmnlNm { get; private set; }
    public string? UpTrmnlNm { get; private set; }
    public short? SendLangNo { get; private set; }
}