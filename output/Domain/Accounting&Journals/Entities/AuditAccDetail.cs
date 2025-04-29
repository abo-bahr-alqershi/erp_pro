public class AuditAccDetail
{
    public long? AudNo { get; private set; }
    public short? AudType { get; private set; }
    public int? DocType { get; private set; }
    public long? JvType { get; private set; }
    public long? DocNo { get; private set; }
    public long? DocSer { get; private set; }
    public string? ACode { get; private set; }
    public string? AcCodeDtl { get; private set; }
    public short? AcDtlTyp { get; private set; }
    public string? ACy { get; private set; }
    public int? AcRate { get; private set; }
    public string? CCode { get; private set; }
    public string? VCode { get; private set; }
    public int? Amt { get; private set; }
    public int? Amtf { get; private set; }
    public string? AcDesc { get; private set; }
    public string? CcCode { get; private set; }
    public string? LcNo { get; private set; }
    public string? RefNo { get; private set; }
    public string? RepCode { get; private set; }
    public long? CashNo { get; private set; }
    public long? ChequeNo { get; private set; }
    public DateTime? ValueDate { get; private set; }
    public int? ExternalPost { get; private set; }
    public string? TrmnlName { get; private set; }
    public long? RcrdNo { get; private set; }
    public DateTime? DocDueDate { get; private set; }
    public long? BillNo { get; private set; }
    public long? BillSer { get; private set; }
    public long? INo { get; private set; }
    public long? WoNo { get; private set; }
    public long? WoSer { get; private set; }
    public long? KNo { get; private set; }
    public long? KSer { get; private set; }
    public short? CmpNo { get; private set; }
    public int BrnNo { get; private set; }
    public short? BrnYear { get; private set; }
    public short? BrnUsr { get; private set; }
    public long? UpCnt { get; private set; }
    public AuditAccMaster AuditAccMaster { get; private set; } // Navigation
}