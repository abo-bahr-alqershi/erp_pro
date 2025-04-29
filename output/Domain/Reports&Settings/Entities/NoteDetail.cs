public class NoteDetail
{
    public bool NoteType { get; private set; }
    public short? NoteTypeNo { get; private set; }
    public long NoteNo { get; private set; }
    public long? NoteSerial { get; private set; }
    /// <summary> وصف الملاحظة </summary>
    public string? NoteDesc { get; private set; }
    /// <summary> مبلغ الملاحظة </summary>
    public int? NoteAmount { get; private set; }
    /// <summary> مبلغ الملاحظة بالعملة الأجنبية </summary>
    public int? NoteAmountForeign { get; private set; }
    /// <summary> سعر التحويل/سعر الصرف </summary>
    public int? NoteRate { get; private set; }
    public short CompanyNo { get; private set; }
    public int BranchNo { get; private set; }
    public short? BranchYear { get; private set; }
    public short? BranchUser { get; private set; }
    public long? UpdateCount { get; private set; }
    public int? ExternalPost { get; private set; }
    public string? AcCodeDtl { get; private set; }
    public string? AcCodeDtlSub { get; private set; }
    public short? AcDtlTyp { get; private set; }
    public string ACy { get; private set; }
    public string? CcCode { get; private set; }
    public string? FromCcCode { get; private set; }
    public string? LcNo { get; private set; }
    public string? PjNo { get; private set; }
    public string? ActvNo { get; private set; }
    public string? RepCode { get; private set; }
    public int? JAmt { get; private set; }
    public int? JAmtF { get; private set; }
    public int? AcRate { get; private set; }
    public bool? Verify { get; private set; }
    public bool? ObPy { get; private set; }
    public long? ColNo { get; private set; }
    public long DocSequence { get; private set; }
    public int? ExternalPost { get; private set; }
    public int? FBrnNo { get; private set; }
    public DateTime? ValueDate { get; private set; }
    public int? AdUId { get; private set; }
    public DateTime? AdDate { get; private set; }
    public int? UpUId { get; private set; }
    public DateTime? UpDate { get; private set; }
    public short CompanyNo { get; private set; }
    public int BranchNo { get; private set; }
    public short? BranchYear { get; private set; }
    public short? BranchUser { get; private set; }
    public long? UpdateCount { get; private set; }
    public long? PrRep { get; private set; }
    public string? AdTrmnlNm { get; private set; }
    public string? UpTrmnlNm { get; private set; }
    public string? RefNo { get; private set; }
    public string? AcDsc { get; private set; }
    public Note Note { get; private set; } // Navigation
}