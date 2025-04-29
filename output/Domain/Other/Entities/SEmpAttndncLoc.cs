public class SEmpAttndncLoc
{
    public long? LocNo { get; private set; }
    public long EmpNo { get; private set; }
    public bool Inactive { get; private set; }
    public DateTime? InactiveDate { get; private set; }
    public string? InactiveRes { get; private set; }
    public int? InactiveUId { get; private set; }
    public int AdUId { get; private set; }
    public DateTime AdDate { get; private set; }
    public int? UpUId { get; private set; }
    public DateTime? UpDate { get; private set; }
    public long? UpCnt { get; private set; }
    public string? CrtTrmnlNm { get; private set; }
    public string? UpdTrmnlNm { get; private set; }
}