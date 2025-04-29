public class Audit
{
    public int? UId { get; private set; }
    public int? FormNo { get; private set; }
    public bool? AuditMod { get; private set; }
    public bool? AuditDel { get; private set; }
    public int? AdUId { get; private set; }
    public DateTime? AdDate { get; private set; }
    public int? UpUId { get; private set; }
    public DateTime? UpDate { get; private set; }
    public long? UpCnt { get; private set; }
    public string? UpTrmnlNm { get; private set; }
    public User User { get; private set; } // Navigation
}