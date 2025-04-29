public class AssembleKitItemDetail
{
    public long DocNo { get; private set; }
    public long? DocSerial { get; private set; }
    /// <summary> رقم الكيت. </summary>
    public string? KitItemNo { get; private set; }
    /// <summary> وحدة العنصر المجمع. </summary>
    public string ItemUnit { get; private set; }
    /// <summary> حجم العبوة. </summary>
    public int? PackSize { get; private set; }
    /// <summary> كمية العنصر. </summary>
    public int? ItemQty { get; private set; }
    public long? FromWarehouse { get; private set; }
    public long? ToWarehouse { get; private set; }
    /// <summary> مركز التكلفة. </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> رقم المشروع. </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> رقم النشاط. </summary>
    public string? ActivityNo { get; private set; }
    /// <summary> تكلفة الكيت المجمعة. </summary>
    public int? KitCost { get; private set; }
    /// <summary> مبلغ المصروفات. </summary>
    public int? ExpenseAmount { get; private set; }
    public long? RecordNo { get; private set; }
    public long DocSequence { get; private set; }
    /// <summary> كود الترحيل. </summary>
    public string? PostCode { get; private set; }
    /// <summary> تاريخ انتهاء الدفعة. </summary>
    public DateTime? ExpireDate { get; private set; }
    /// <summary> رقم التشغيلة/الدفعة. </summary>
    public string? BatchNo { get; private set; }
    public short CompanyNo { get; private set; }
    public int BranchNo { get; private set; }
    public short? BranchYear { get; private set; }
    public short? BranchUser { get; private set; }
    public long? UpdateCount { get; private set; }
    /// <summary> سعر العنصر. </summary>
    public int? ItemPrice { get; private set; }
    /// <summary> نوع المستند المرجعي. </summary>
    public int? DocTypeRef { get; private set; }
    /// <summary> رقم المستند المرجعي. </summary>
    public int? DocNoRef { get; private set; }
    /// <summary> الرقم التسلسلي للمستند المرجعي. </summary>
    public int? DocSerRef { get; private set; }
    /// <summary> تسلسل السطر المرجعي. </summary>
    public int? DocSequenceRef { get; private set; }
    /// <summary> تسلسل السطر الرئيسي. </summary>
    public int? DocSequenceMain { get; private set; }
    /// <summary> رقم فرعي للسطر. </summary>
    public int? RecordSq { get; private set; }
    public AssembleKitItem AssembleKitItem { get; private set; } // Navigation
    public Project Project { get; private set; } // Navigation
}