public class EmployeeAttendance
{
    public long? LocNo { get; private set; }
    public string LocLNm { get; private set; }
    public string? LocFNm { get; private set; }
    public short ConnTyp { get; private set; }
    public string? GpsLngitdX { get; private set; }
    public string? GpsLatitdY { get; private set; }
    public int? AllwDstncGps { get; private set; }
    public string? LocNetwrkIp { get; private set; }
    public bool Inactive { get; private set; }
    public string? InactiveRes { get; private set; }
    public long? InactiveUId { get; private set; }
    public DateTime? InactiveDate { get; private set; }
    public int AdUId { get; private set; }
    public DateTime AdDate { get; private set; }
    public string? AdTrmnlNm { get; private set; }
    public int? UpUId { get; private set; }
    public long? UpCnt { get; private set; }
    public DateTime? UpDate { get; private set; }
    public string? UpTrmnlNm { get; private set; }
    public long? PrRep { get; private set; }
}