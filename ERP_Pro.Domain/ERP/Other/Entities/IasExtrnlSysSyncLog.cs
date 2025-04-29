public class IasExtrnlSysSyncLog
{
    public int? SeqNo { get; private set; }
    public int? FSysNo { get; private set; }
    public string? Url { get; private set; }
    public string? CallScr { get; private set; }
    public string? RqustBody { get; private set; }
    public string? RspnsBody { get; private set; }
    public int? HttpCode { get; private set; }
    public DateTime? LogDate { get; private set; }
}