public class AssembleKitItem
{
    public long DocNo { get; private set; }
    public long? DocSerial { get; private set; }
    /// <summary> تاريخ المستند. </summary>
    public DateTime DocDate { get; private set; }
    public long? FromWarehouse { get; private set; }
    public long? ToWarehouse { get; private set; }
    public bool? ExpenseAmountType { get; private set; }
    /// <summary> مركز التكلفة. </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> رقم المشروع. </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> رقم النشاط. </summary>
    public string? ActivityNo { get; private set; }
    /// <summary> سعر المخزون. </summary>
    public int? StockRate { get; private set; }
    /// <summary> وصف المستند. </summary>
    public string? DocDesc { get; private set; }
    /// <summary> رقم مرجعي إضافي. </summary>
    public string? RefNo { get; private set; }
    /// <summary> مبلغ المصروفات. </summary>
    public int? ExpenseAmount { get; private set; }
    public bool? Processed { get; private set; }
    public bool? Hung { get; private set; }
    public bool? DocPost { get; private set; }
    public long? EmployeeNo { get; private set; }
    public int? AddedByUserId { get; private set; }
    /// <summary> تاريخ الإضافة. </summary>
    public DateTime? AddedDate { get; private set; }
    public int? UpdatedByUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل. </summary>
    public DateTime? UpdatedDate { get; private set; }
    public int? PostUserId { get; private set; }
    /// <summary> تاريخ الترحيل. </summary>
    public DateTime? PostDate { get; private set; }
    public int? UnpostUserId { get; private set; }
    /// <summary> تاريخ إلغاء الترحيل. </summary>
    public DateTime? UnpostDate { get; private set; }
    public bool? AuditRef { get; private set; }
    /// <summary> وصف مرجع التدقيق. </summary>
    public string? AuditRefDesc { get; private set; }
    public int? AuditRefUserId { get; private set; }
    /// <summary> تاريخ مرجع التدقيق. </summary>
    public DateTime? AuditRefDate { get; private set; }
    public short CompanyNo { get; private set; }
    public int BranchNo { get; private set; }
    public short? BranchYear { get; private set; }
    public short? BranchUser { get; private set; }
    public long? UpdateCount { get; private set; }
    public long? ReportPriority { get; private set; }
    /// <summary> الجهاز عند الإضافة. </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> الجهاز عند التعديل. </summary>
    public string? UpdatedTerminal { get; private set; }
    public int? TypeNo { get; private set; }
    public bool? ProductionDoc { get; private set; }
    /// <summary> تسلسل السطر الرئيسي. </summary>
    public int? DocSequenceMain { get; private set; }
    public bool? AddExpenseType { get; private set; }
    public Project Project { get; private set; } // Navigation
    public ICollection<AssembleKitItemDetail> AssembleKitItemDetails { get; private set; } // Inverse Navigation
}