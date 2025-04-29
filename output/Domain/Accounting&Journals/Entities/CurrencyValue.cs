public class CurrencyValue
{
    public string? ACy { get; private set; }
    public int? CurValue { get; private set; }
    public int? AdUId { get; private set; }
    public DateTime? AdDate { get; private set; }
    public int? UpUId { get; private set; }
    public DateTime? UpDate { get; private set; }
    public long? UpCnt { get; private set; }
    public long? PrRep { get; private set; }
    public string? AdTrmnlNm { get; private set; }
    public string? UpTrmnlNm { get; private set; }
    public short? CmpNo { get; private set; }
    public int? BrnNo { get; private set; }
    public short? BrnYear { get; private set; }
    public short? BrnUsr { get; private set; }
    public string? ACy { get; private set; }
    public string? CcCode { get; private set; }
    public decimal? CrLimit { get; private set; }
    public decimal? InvLimit { get; private set; }
    public int? CstLmtPer { get; private set; }
    public bool? CstLmtTyp { get; private set; }
    public int? AdUId { get; private set; }
    public DateTime? AdDate { get; private set; }
    public int? UpUId { get; private set; }
    public DateTime? UpDate { get; private set; }
    public int? EmptyLimit { get; private set; }
    public long? UpCnt { get; private set; }
    public long? PrRep { get; private set; }
    public string? AdTrmnlNm { get; private set; }
    public string? UpTrmnlNm { get; private set; }
    public CurrencyExchangeRate CurrencyExchangeRate { get; private set; } // Navigation
}