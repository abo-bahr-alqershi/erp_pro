public class KitItemDetail
{
    /// <summary> رقم المستند. </summary>
    public long DocNo { get; private set; }
    /// <summary> الرقم التسلسلي للمستند. </summary>
    public long? DocSerial { get; private set; }
    /// <summary> رقم الكيت. </summary>
    public string? KitItemNo { get; private set; }
    /// <summary> كود الصنف. </summary>
    public string? ItemCode { get; private set; }
    /// <summary> وحدة الصنف. </summary>
    public string? ItemUnit { get; private set; }
    /// <summary> حجم العبوة. </summary>
    public int PackSize { get; private set; }
    /// <summary> كمية العنصر في الكيت. </summary>
    public int? ItemQty { get; private set; }
    /// <summary> كمية العبوة في الكيت. </summary>
    public int? PackQty { get; private set; }
    /// <summary> الكمية القياسية. </summary>
    public int? StandardQty { get; private set; }
    /// <summary> الكمية المتاحة. </summary>
    public int? AvailableQty { get; private set; }
    /// <summary> كود المستودع. </summary>
    public long? WarehouseCode { get; private set; }
    /// <summary> مركز التكلفة. </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> رقم المشروع. </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> رقم النشاط. </summary>
    public string? ActivityNo { get; private set; }
    /// <summary> تكلفة العنصر. </summary>
    public int? ItemCost { get; private set; }
    /// <summary> كمية الكيت. </summary>
    public int? KitQty { get; private set; }
    /// <summary> إجمالي الكمية. </summary>
    public int? SumQty { get; private set; }
    /// <summary> إجمالي جزئي للكمية. </summary>
    public int? PartialSumQty { get; private set; }
    /// <summary> رقم السطر الداخلي. </summary>
    public long? RecordNo { get; private set; }
    /// <summary> تسلسل السطر بالمستند. </summary>
    public long? DocSequence { get; private set; }
    /// <summary> كود الترحيل. </summary>
    public string? PostCode { get; private set; }
    /// <summary> تاريخ انتهاء الدفعة. </summary>
    public DateTime? ExpireDate { get; private set; }
    /// <summary> رقم التشغيلة/الدفعة. </summary>
    public string? BatchNo { get; private set; }
    /// <summary> رقم تسلسلي فرعي للسطر. </summary>
    public int? RecordSq { get; private set; }
    /// <summary> رقم الشركة. </summary>
    public short CompanyNo { get; private set; }
    /// <summary> رقم الفرع. </summary>
    public int BranchNo { get; private set; }
    /// <summary> السنة المالية للفرع. </summary>
    public short? BranchYear { get; private set; }
    /// <summary> مستخدم الفرع. </summary>
    public short? BranchUser { get; private set; }
    /// <summary> عدد مرات التعديل. </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> سعر العنصر. </summary>
    public int? ItemPrice { get; private set; }
    /// <summary> تسلسل السطر الرئيسي. </summary>
    public int? DocSequenceMain { get; private set; }
    public long BillSer { get; private set; }
    public string BillCurrency { get; private set; }
    public decimal? BillAmt { get; private set; }
    public DateTime? BillDate { get; private set; }
    public string ACode { get; private set; }
    public string? CCode { get; private set; }
    /// <summary> كود المستودع. </summary>
    public long? WarehouseCode { get; private set; }
    /// <summary> مركز التكلفة. </summary>
    public string? CostCenterCode { get; private set; }
    public long? KNo { get; private set; }
    public long? KSer { get; private set; }
    public DateTime KDate { get; private set; }
    public decimal? KAmt { get; private set; }
    public decimal? PaidAmt { get; private set; }
    public decimal? PaidAmtOthr { get; private set; }
    public string? KNote { get; private set; }
    public bool? KPy { get; private set; }
    public int? AdUId { get; private set; }
    public DateTime? AdDate { get; private set; }
    public int? UpUId { get; private set; }
    public DateTime? UpDate { get; private set; }
    /// <summary> رقم الشركة. </summary>
    public short CompanyNo { get; private set; }
    /// <summary> رقم الفرع. </summary>
    public int BranchNo { get; private set; }
    /// <summary> السنة المالية للفرع. </summary>
    public short? BranchYear { get; private set; }
    /// <summary> مستخدم الفرع. </summary>
    public short BranchUser { get; private set; }
    public string? AdTrmnlNm { get; private set; }
    public string? UpTrmnlNm { get; private set; }
    /// <summary> عدد مرات التعديل. </summary>
    public long? UpdateCount { get; private set; }
    public Project Project { get; private set; } // Navigation
}