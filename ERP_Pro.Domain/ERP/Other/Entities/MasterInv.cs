public class MasterInv
{
    public long InvNo { get; private set; }
    public int InvType { get; private set; }
    public long? InvSer { get; private set; }
    public DateTime? InvDate { get; private set; }
    public string? InvDesc { get; private set; }
    public string? RefNo { get; private set; }
    public bool? Annual { get; private set; }
    public bool? UseAttachInv { get; private set; }
    public long? InvNoRef { get; private set; }
    public int? ExternalPost { get; private set; }
    public bool? Processed { get; private set; }
    public int? MachineNo { get; private set; }
    public int? AdUId { get; private set; }
    public DateTime? AdDate { get; private set; }
    public int? UpUId { get; private set; }
    public DateTime? UpDate { get; private set; }
    public long? UpCnt { get; private set; }
    public long? PrRep { get; private set; }
    public short CmpNo { get; private set; }
    public int BrnNo { get; private set; }
    public short? BrnYear { get; private set; }
    public short BrnUsr { get; private set; }
    public string? AdTrmnlNm { get; private set; }
    public string? UpTrmnlNm { get; private set; }
}