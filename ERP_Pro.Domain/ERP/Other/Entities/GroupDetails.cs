public class GroupDetails
{
    public string? GCode { get; private set; }
    public string GAName { get; private set; }
    public string? GEName { get; private set; }
    public string? GICode { get; private set; }
    public int? AdUId { get; private set; }
    public DateTime? AdDate { get; private set; }
    public int? UpUId { get; private set; }
    public DateTime? UpDate { get; private set; }
    public long? UpCnt { get; private set; }
    public long? PrRep { get; private set; }
    public short? BrnYear { get; private set; }
    public short? BrnUsr { get; private set; }
    public string? AdTrmnlNm { get; private set; }
    public string? UpTrmnlNm { get; private set; }
    public int? TaxPrcntDflt { get; private set; }
    public bool? SynchrnzToWebFlg { get; private set; }
    public bool? UseSalPriceAsPurPrice { get; private set; }
    public int? RolLmtQty { get; private set; }
}