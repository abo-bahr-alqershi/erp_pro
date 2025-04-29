public class PosCreditBillMaster
{
    public long ReceiptSerial { get; private set; }
    /// <summary> تاريخ الفاتورة </summary>
    public DateTime ReceiptDate { get; private set; }
    public int? FuelTypeNo { get; private set; }
    public int? ReceiptNo { get; private set; }
    public long? FirstBillNo { get; private set; }
    public long? ToBillNo { get; private set; }
    /// <summary> رقم مرجعي </summary>
    public string? ReferenceNo { get; private set; }
    /// <summary> وصف الفاتورة </summary>
    public string? ReceiptDesc { get; private set; }
    /// <summary> كود العميل </summary>
    public string? CustomerCode { get; private set; }
    /// <summary> تاريخ الإصدار </summary>
    public DateTime? IssueDate { get; private set; }
    /// <summary> تاريخ الانتهاء </summary>
    public DateTime? ExpireDate { get; private set; }
    public int? TargetFuelTypeNo { get; private set; }
    public bool? MoveDocPay { get; private set; }
    public int AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public short CompanyNo { get; private set; }
    public int BranchNo { get; private set; }
    public short? BranchYear { get; private set; }
    public short? BranchUser { get; private set; }
    public long? ReportPriority { get; private set; }
    public long? UpdateCount { get; private set; }
    /// <summary> الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public Customer Customer { get; private set; } // Navigation
    public ICollection<PosCreditBillDetail> PosCreditBillDetails { get; private set; } // Inverse Navigation
}