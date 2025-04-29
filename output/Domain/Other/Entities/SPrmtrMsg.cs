public class SPrmtrMsg
{
    public bool? ParaNo { get; private set; }
    public short? HourSendChqAlrt { get; private set; }
    public short? HourSendCstBlnc { get; private set; }
    public short? HourSendAccntBlnc { get; private set; }
    public bool? GetAccntAlrt { get; private set; }
    public short? PrdSendAccntBlnc { get; private set; }
    public bool? GetAccntDtlAlrt { get; private set; }
    public short? PrdSendCstBlnc { get; private set; }
    public bool? GetDueChqAlrt { get; private set; }
    public short? PrdAlrtRcptDueChq { get; private set; }
    public short? PrdAlrtPymntDueChq { get; private set; }
    public short? MintSendChqAlrt { get; private set; }
    public string? TzSendChqAlrt { get; private set; }
    public short? MintSendAccntBlnc { get; private set; }
    public string? TzSendAccntBlnc { get; private set; }
    public short? MintSendCstBlnc { get; private set; }
    public string? TzSendCstBlnc { get; private set; }
    public int? UpUId { get; private set; }
    public DateTime? UpDate { get; private set; }
    public long? UpCnt { get; private set; }
    public string? UpTrmnlNm { get; private set; }
    public long? PrRep { get; private set; }
}