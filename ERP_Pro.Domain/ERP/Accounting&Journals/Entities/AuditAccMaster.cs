public class AuditAccMaster
{
    public long? AudNo { get; private set; }
    public short? AudType { get; private set; }
    public int? DocType { get; private set; }
    public long? JvType { get; private set; }
    public long? DocNo { get; private set; }
    public long? DocSer { get; private set; }
    public DateTime? DocDate { get; private set; }
    public string? ACode { get; private set; }
    public string? AcCodeDtl { get; private set; }
    public short? AcDtlTyp { get; private set; }
    public string? ACy { get; private set; }
    public int? ExRate { get; private set; }
    public int? Amt { get; private set; }
    public int? Amtf { get; private set; }
    public string? CCode { get; private set; }
    public string? VCode { get; private set; }
    public string? CcCode { get; private set; }
    public long? ColNo { get; private set; }
    public string? ADesc { get; private set; }
    public string? RefNo { get; private set; }
    public string? RefName { get; private set; }
    public long? CashNo { get; private set; }
    public short? CheqType { get; private set; }
    public string? RecName { get; private set; }
    public string? BenName { get; private set; }
    public bool? StandBy { get; private set; }
    public short? AttachNo { get; private set; }
    public string? ReasonDel { get; private set; }
    public int? ExternalPost { get; private set; }
    public long? PrRep { get; private set; }
    public long? UpCnt { get; private set; }
    public int? UId { get; private set; }
    public DateTime? AudDate { get; private set; }
    public int? AdUId { get; private set; }
    public DateTime? AdDate { get; private set; }
    public int? PostUId { get; private set; }
    public DateTime? PostDate { get; private set; }
    public int? UnpostUId { get; private set; }
    public DateTime? UnpostDate { get; private set; }
    public string? TrmnlName { get; private set; }
    public short CmpNo { get; private set; }
    public int BrnNo { get; private set; }
    public short? BrnYear { get; private set; }
    public short? BrnUsr { get; private set; }
    public ICollection<AuditAccDetail> AuditAccDetails { get; private set; } // Inverse Navigation
}