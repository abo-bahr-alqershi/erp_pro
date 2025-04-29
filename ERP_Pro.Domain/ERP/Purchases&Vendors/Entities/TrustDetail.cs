public class TrustDetail
{
    /// <summary> رقم الأمانة الرئيسي </summary>
    public long TrustNo { get; private set; }
    /// <summary> التسلسل للأمانة </summary>
    public long? TrustSerial { get; private set; }
    /// <summary> كود الصنف </summary>
    public string? ItemCode { get; private set; }
    /// <summary> كود المستودع </summary>
    public short? WarehouseCode { get; private set; }
    /// <summary> كمية الصنف </summary>
    public int? ItemQty { get; private set; }
    /// <summary> وحدة الصنف </summary>
    public string ItemUnit { get; private set; }
    /// <summary> حجم العبوة </summary>
    public int? PackSize { get; private set; }
    /// <summary> رقم السطر </summary>
    public long? RecordNo { get; private set; }
    /// <summary> رقم الشركة </summary>
    public short? CompanyNo { get; private set; }
    /// <summary> رقم الفرع </summary>
    public short? BranchNo { get; private set; }
    /// <summary> السنة المالية للفرع </summary>
    public short? BranchYear { get; private set; }
    /// <summary> مستخدم الفرع </summary>
    public short? BranchUser { get; private set; }
    /// <summary> التسلسل للأمانة </summary>
    public long? TrustSerial { get; private set; }
    public DateTime? TrustDate { get; private set; }
    public string? ADesc { get; private set; }
    public string? RefNo { get; private set; }
    public long? EmpNo { get; private set; }
    /// <summary> كود المستودع </summary>
    public short? WarehouseCode { get; private set; }
    public bool? Processed { get; private set; }
    public long? PrRep { get; private set; }
    public int? AdUId { get; private set; }
    public string? AdTrmnlNm { get; private set; }
    public DateTime? AdDate { get; private set; }
    public string? UpTrmnlNm { get; private set; }
    public int? UpUId { get; private set; }
    public DateTime? UpDate { get; private set; }
    public long? UpCnt { get; private set; }
    /// <summary> رقم الشركة </summary>
    public short? CompanyNo { get; private set; }
    /// <summary> رقم الفرع </summary>
    public short? BranchNo { get; private set; }
    /// <summary> السنة المالية للفرع </summary>
    public short? BranchYear { get; private set; }
    /// <summary> مستخدم الفرع </summary>
    public short? BranchUser { get; private set; }
    public TrustMaster TrustMaster { get; private set; } // Navigation
}