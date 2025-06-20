public class AuditDoc
{
    public int DocType { get; private set; }
    public long JvType { get; private set; }
    public long DocNo { get; private set; }
    public long DocSer { get; private set; }
    public DateTime DocDate { get; private set; }
    public string? ACode { get; private set; }
    public string? AcCodeDtl { get; private set; }
    public short? AcDtlTyp { get; private set; }
    public string? ACy { get; private set; }
    public int? Amt { get; private set; }
    public int? AmtF { get; private set; }
    public int? AuditSeq { get; private set; }
    public int? FromUId { get; private set; }
    public int? ToUId { get; private set; }
    public bool? Processed { get; private set; }
    public string? CcCode { get; private set; }
    public string? PjNo { get; private set; }
    public string? ActvNo { get; private set; }
    public string? DocDesc { get; private set; }
    public string? RefNo { get; private set; }
    public string? CCode { get; private set; }
    public string? VCode { get; private set; }
    public long? DocTypeNo { get; private set; }
    public bool? DocPost { get; private set; }
    public string? TrmnlName { get; private set; }
    public bool? AuditRefOld { get; private set; }
    public bool? AuditRef { get; private set; }
    public string? AuditRefDesc { get; private set; }
    public int? AuditRefUId { get; private set; }
    public DateTime? AuditRefDate { get; private set; }
    public long? WCode { get; private set; }
    public long? CashNo { get; private set; }
    public int? AdUId { get; private set; }
    public DateTime? AdDate { get; private set; }
    public int? AudUId { get; private set; }
    public DateTime? AudDate { get; private set; }
    public short CmpNo { get; private set; }
    public int BrnNo { get; private set; }
    public short? BrnYear { get; private set; }
    public short? BrnUsr { get; private set; }
    public long? UpCnt { get; private set; }
    public long? PrRep { get; private set; }
}