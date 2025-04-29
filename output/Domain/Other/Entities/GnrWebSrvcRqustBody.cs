public class GnrWebSrvcRqustBody
{
    public long SrvcNo { get; private set; }
    public string Alias { get; private set; }
    public string ObjName { get; private set; }
    public bool? IsArray { get; private set; }
    public string QryTxt { get; private set; }
    public string? QryWhr { get; private set; }
    public string? QryOrdr { get; private set; }
    public string? Plchldr { get; private set; }
    public string? TempKeys { get; private set; }
    public int? AdUId { get; private set; }
    public DateTime? AdDate { get; private set; }
    public string? AdTrmnlNm { get; private set; }
    public int? UpUId { get; private set; }
    public DateTime? UpDate { get; private set; }
    public int? PrRep { get; private set; }
    public long? UpCnt { get; private set; }
    public string? UpTrmnlNm { get; private set; }
}