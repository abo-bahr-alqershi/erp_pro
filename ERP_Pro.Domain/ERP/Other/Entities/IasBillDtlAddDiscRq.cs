public class IasBillDtlAddDiscRq
{
    public long DocNo { get; private set; }
    public long DocSer { get; private set; }
    public long BillNo { get; private set; }
    public long BillSer { get; private set; }
    public string ICode { get; private set; }
    public string? ItmUnt { get; private set; }
    public int PSize { get; private set; }
    public long WCode { get; private set; }
    public string? CcCode { get; private set; }
    public string? PjNo { get; private set; }
    public string? ActvNo { get; private set; }
    public int? NetQty { get; private set; }
    public decimal? AddDisPer { get; private set; }
    public int? AddDisAmtDtl { get; private set; }
    public int? AddDisAmtDtlPrev { get; private set; }
    public int? AddDisQty { get; private set; }
    public int? RetAmt { get; private set; }
    public long RcrdNo { get; private set; }
    public long DocSequence { get; private set; }
    public int? ExternalPost { get; private set; }
    public string? ItemDesc { get; private set; }
    public int? PriceAfterDisc { get; private set; }
    public int? UpUId { get; private set; }
    public DateTime? UpDate { get; private set; }
    public string? UpTrmnlNm { get; private set; }
    public long? UpCnt { get; private set; }
    public short CmpNo { get; private set; }
    public int BrnNo { get; private set; }
    public short? BrnUsr { get; private set; }
    public short? BrnYear { get; private set; }
    public int? DocTypeRef { get; private set; }
    public long? DocSerRef { get; private set; }
    public long? DocNoRef { get; private set; }
    public int? AddVatAmt { get; private set; }
}