public class IasTenderMst
{
    public short TdType { get; private set; }
    public long TdNo { get; private set; }
    public long? TdSer { get; private set; }
    public DateTime TdDate { get; private set; }
    public string? VCode { get; private set; }
    public string? VName { get; private set; }
    public string ACy { get; private set; }
    public string? CcCode { get; private set; }
    public string? PjNo { get; private set; }
    public string? ActvNo { get; private set; }
    public bool? TdProcessed { get; private set; }
    public string? TdDesc { get; private set; }
    public bool? Inactive { get; private set; }
    public string? ResInactive { get; private set; }
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
}