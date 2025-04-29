public class CostCenterTypes
{
    public int? CcType { get; private set; }
    public string CcName { get; private set; }
    public string? CcEName { get; private set; }
    public bool? AffectedByTrans { get; private set; }
    public int? AdUId { get; private set; }
    public DateTime? AdDate { get; private set; }
    public int? UpUId { get; private set; }
    public DateTime? UpDate { get; private set; }
    public long? UpCnt { get; private set; }
    public long? PrRep { get; private set; }
    public string? AdTrmnlNm { get; private set; }
    public string? UpTrmnlNm { get; private set; }
}