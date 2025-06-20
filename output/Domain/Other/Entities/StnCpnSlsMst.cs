public class StnCpnSlsMst
{
    public short BillDocType { get; private set; }
    public long DocNo { get; private set; }
    public long DocSer { get; private set; }
    public DateTime? DocDate { get; private set; }
    public string ACy { get; private set; }
    public int CurRate { get; private set; }
    public string? CCode { get; private set; }
    public string? CName { get; private set; }
    public string? RcptName { get; private set; }
    public string? ACode { get; private set; }
    public bool? DocPst { get; private set; }
    public int? DocAmt { get; private set; }
    public string? RefNo { get; private set; }
    public long? CashNo { get; private set; }
    public string? CcCode { get; private set; }
    public string? PjNo { get; private set; }
    public string? ActvNo { get; private set; }
    public bool? StandBy { get; private set; }
    public int? ExternalPost { get; private set; }
    public int? VatAmt { get; private set; }
    public int AdUId { get; private set; }
    public DateTime AdDate { get; private set; }
    public int? UpUId { get; private set; }
    public DateTime? UpDate { get; private set; }
    public long? UpCnt { get; private set; }
    public int? PostUId { get; private set; }
    public DateTime? PostDate { get; private set; }
    public int? UnpostUId { get; private set; }
    public DateTime? UnpostDate { get; private set; }
    public short CmpNo { get; private set; }
    public int BrnNo { get; private set; }
    public short? BrnYear { get; private set; }
    public short? BrnUsr { get; private set; }
    public int? FuelTypNo { get; private set; }
    public DateTime? IssueDate { get; private set; }
    public DateTime? ExpireDate { get; private set; }
    public DateTime? ChequeDueDate { get; private set; }
    public int? ChequeAmt { get; private set; }
    public long? ChequeNo { get; private set; }
    public DateTime? BillDueDate { get; private set; }
    public bool? AuditRef { get; private set; }
    public string? AuditRefDesc { get; private set; }
    public int? AuditRefUId { get; private set; }
    public DateTime? AuditRefDate { get; private set; }
    public string? DocDsc { get; private set; }
    public long? PrRep { get; private set; }
    public string? AdTrmnlNm { get; private set; }
    public string? UpTrmnlNm { get; private set; }
}