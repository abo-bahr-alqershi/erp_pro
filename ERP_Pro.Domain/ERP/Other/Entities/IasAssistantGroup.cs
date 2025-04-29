public class IasAssistantGroup
{
    public string? GCode { get; private set; }
    public string? MngCode { get; private set; }
    public string? SubgCode { get; private set; }
    public string? AssistantNo { get; private set; }
    public string? AssistantAName { get; private set; }
    public string? AssistantEName { get; private set; }
    public int? AdUId { get; private set; }
    public DateTime? AdDate { get; private set; }
    public int? UpUId { get; private set; }
    public DateTime? UpDate { get; private set; }
    public long? UpCnt { get; private set; }
    public long? PrRep { get; private set; }
    public string? AdTrmnlNm { get; private set; }
    public string? UpTrmnlNm { get; private set; }
    public bool? SynchrnzToWebFlg { get; private set; }
}