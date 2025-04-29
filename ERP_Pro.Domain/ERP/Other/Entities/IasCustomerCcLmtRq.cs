public class IasCustomerCcLmtRq
{
    public string? CCode { get; private set; }
    public string? ACy { get; private set; }
    public string? CcCode { get; private set; }
    public decimal? CrLimit { get; private set; }
    public decimal? InvLimit { get; private set; }
    public int? AdUId { get; private set; }
    public DateTime? AdDate { get; private set; }
    public int? UpUId { get; private set; }
    public DateTime? UpDate { get; private set; }
    public int? EmptyLimit { get; private set; }
    public int? PrRep { get; private set; }
    public long? UpCnt { get; private set; }
    public bool? CstLmtTyp { get; private set; }
    public int? CstLmtPer { get; private set; }
    public string? AdTrmnlNm { get; private set; }
    public string? UpTrmnlNm { get; private set; }
}