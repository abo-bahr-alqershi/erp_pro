public class DisassembleKitItemDetail
{
    /// <summary> رقم مستند التفكيك. </summary>
    public long DocNo { get; private set; }
    /// <summary> الرقم التسلسلي للمستند. </summary>
    public long? DocSerial { get; private set; }
    /// <summary> رقم مستند التجميع الأصلي. </summary>
    public long? AssembleDocNo { get; private set; }
    /// <summary> الرقم التسلسلي للتجميع الأصلي. </summary>
    public long? AssembleDocSer { get; private set; }
    /// <summary> رقم الكيت. </summary>
    public string? KitItemNo { get; private set; }
    /// <summary> وحدة العنصر. </summary>
    public string? ItemUnit { get; private set; }
    /// <summary> حجم العبوة. </summary>
    public int? PackSize { get; private set; }
    /// <summary> كمية العنصر. </summary>
    public int? ItemQty { get; private set; }
    /// <summary> المستودع المحول منه. </summary>
    public long? FromWarehouse { get; private set; }
    /// <summary> المستودع المحول إليه. </summary>
    public long? ToWarehouse { get; private set; }
    /// <summary> مركز التكلفة. </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> رقم المشروع. </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> رقم النشاط. </summary>
    public string? ActivityNo { get; private set; }
    /// <summary> تكلفة الكيت المجمعة. </summary>
    public int? KitCost { get; private set; }
    /// <summary> رقم السطر الداخلي. </summary>
    public long? RecordNo { get; private set; }
    /// <summary> تسلسل السطر بالمستند. </summary>
    public long DocSequence { get; private set; }
    /// <summary> كود الترحيل. </summary>
    public string? PostCode { get; private set; }
    /// <summary> تاريخ انتهاء الدفعة. </summary>
    public DateTime? ExpireDate { get; private set; }
    /// <summary> رقم التشغيلة/الدفعة. </summary>
    public string? BatchNo { get; private set; }
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
    /// <summary> تسلسل السطر المرجعي. </summary>
    public int? DocSequenceRef { get; private set; }
    /// <summary> تسلسل السطر الرئيسي. </summary>
    public int? DocSequenceMain { get; private set; }
    /// <summary> رقم فرعي للسطر. </summary>
    public int? RecordSq { get; private set; }
    /// <summary> الرقم التسلسلي للمستند. </summary>
    public long? DocSerial { get; private set; }
    /// <summary> رقم مستند التجميع الأصلي. </summary>
    public long? AssembleDocNo { get; private set; }
    /// <summary> الرقم التسلسلي للتجميع الأصلي. </summary>
    public long? AssembleDocSer { get; private set; }
    /// <summary> رقم الكيت. </summary>
    public string? KitItemNo { get; private set; }
    public string? ICode { get; private set; }
    /// <summary> وحدة العنصر. </summary>
    public string ItemUnit { get; private set; }
    /// <summary> حجم العبوة. </summary>
    public int PackSize { get; private set; }
    /// <summary> كمية العنصر. </summary>
    public int? ItemQty { get; private set; }
    public int? PQty { get; private set; }
    public int? StndrdQty { get; private set; }
    public int? AvlQty { get; private set; }
    public long? WCode { get; private set; }
    /// <summary> مركز التكلفة. </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> رقم المشروع. </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> رقم النشاط. </summary>
    public string? ActivityNo { get; private set; }
    public int? ICost { get; private set; }
    public int? KitQty { get; private set; }
    public int? SumQty { get; private set; }
    public int? PsumQty { get; private set; }
    public int? WtAvgBefore { get; private set; }
    public int? WtAvgAfter { get; private set; }
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
    public int? PerCostFromKitItm { get; private set; }
    /// <summary> تسلسل السطر الرئيسي. </summary>
    public int? DocSequenceMain { get; private set; }
    /// <summary> رقم فرعي للسطر. </summary>
    public int? RecordSq { get; private set; }
    public string? OptnNm { get; private set; }
    public long? LblNo { get; private set; }
    public string? AdTrmnlNm { get; private set; }
    public string? UpTrmnlNm { get; private set; }
    public int? UId { get; private set; }
    public bool? OptnFlg { get; private set; }
    public int? AdUId { get; private set; }
    public DateTime? AdDate { get; private set; }
    public int? UpUId { get; private set; }
    public DateTime? UpDate { get; private set; }
    /// <summary> عدد مرات التعديل. </summary>
    public long? UpdateCount { get; private set; }
    public long? PrRep { get; private set; }
    public string? AdTrmnlNm { get; private set; }
    public string? UpTrmnlNm { get; private set; }
    public long? GrNo { get; private set; }
    public long? GSer { get; private set; }
    /// <summary> الرقم التسلسلي للمستند. </summary>
    public long? DocSerial { get; private set; }
    public string? ICode { get; private set; }
    /// <summary> وحدة العنصر. </summary>
    public string? ItemUnit { get; private set; }
    /// <summary> حجم العبوة. </summary>
    public int? PackSize { get; private set; }
    public long? WCode { get; private set; }
    /// <summary> تاريخ انتهاء الدفعة. </summary>
    public DateTime ExpireDate { get; private set; }
    /// <summary> رقم التشغيلة/الدفعة. </summary>
    public string BatchNo { get; private set; }
    /// <summary> رقم السطر الداخلي. </summary>
    public long? RecordNo { get; private set; }
    public int? C1 { get; private set; }
    public int? C2 { get; private set; }
    public int? C3 { get; private set; }
    public int? GrRcrdNo { get; private set; }
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
    public string? CurCode { get; private set; }
    public string CurName { get; private set; }
    public string? CurEName { get; private set; }
    public int? CurRate { get; private set; }
    public int? CurRatePos { get; private set; }
    public string? CurFraction { get; private set; }
    public string? CurEFraction { get; private set; }
    public bool LF { get; private set; }
    public bool? StockCur { get; private set; }
    public decimal? MaxCurRate { get; private set; }
    public decimal? MinCurRate { get; private set; }
    public bool CurFrcNo { get; private set; }
    public int? AdUId { get; private set; }
    public DateTime? AdDate { get; private set; }
    public int? UpUId { get; private set; }
    public DateTime? UpDate { get; private set; }
    /// <summary> عدد مرات التعديل. </summary>
    public long? UpdateCount { get; private set; }
    public long? PrRep { get; private set; }
    public string? AdTrmnlNm { get; private set; }
    public string? UpTrmnlNm { get; private set; }
    public DisassembleKitItem DisassembleKitItem { get; private set; } // Navigation
    public Project Project { get; private set; } // Navigation
}