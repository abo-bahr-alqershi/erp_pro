public class IasApCharges
{
    public short? ChrgNo { get; private set; }
    public string? ChrgName { get; private set; }
    public string? ACode { get; private set; }
    public string? ACy { get; private set; }
    public int? AcRate { get; private set; }
    public int? ChrgBillType { get; private set; }
    public bool? AmtType { get; private set; }
    public bool? ChrgType { get; private set; }
    public int? Amt { get; private set; }
    public bool? FillAuto { get; private set; }
    public bool? CalcType { get; private set; }
    public bool? AllowReturn { get; private set; }
    public bool? RetWithoutBillno { get; private set; }
    public int? VatPer { get; private set; }
    public int? UseVat { get; private set; }
    public bool? EfctItmCst { get; private set; }
    public bool? PstToVndrCshBnk { get; private set; }
    public int? AdUId { get; private set; }
    public DateTime? AdDate { get; private set; }
    public int? UpUId { get; private set; }
    public DateTime? UpDate { get; private set; }
    public long? UpCnt { get; private set; }
    public int? PrRep { get; private set; }
    public string? AdTrmnlNm { get; private set; }
    public string? UpTrmnlNm { get; private set; }
    public bool? UseTdsFlg { get; private set; }
    public bool? AddFrcInvoicePi { get; private set; }
}