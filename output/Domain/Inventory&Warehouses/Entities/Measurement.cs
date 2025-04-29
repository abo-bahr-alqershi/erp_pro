public class Measurement
{
    public string? MeasureCode { get; private set; }
    public string? Measure { get; private set; }
    public string? MeasureFNm { get; private set; }
    public bool? MeasureType { get; private set; }
    public short? MeasureWtType { get; private set; }
    public bool? MeasureWtConn { get; private set; }
    public long? DfltSize { get; private set; }
    public bool? AllowUpd { get; private set; }
    public int? AdUId { get; private set; }
    public DateTime? AdDate { get; private set; }
    public int? UpUId { get; private set; }
    public DateTime? UpDate { get; private set; }
    public long? UpCnt { get; private set; }
    public long? PrRep { get; private set; }
    public string? AdTrmnlNm { get; private set; }
    public string? UpTrmnlNm { get; private set; }
    public string? MeasureCodeGb { get; private set; }
}