public class PosCreditBillMaster
{
    /// <summary> تسلسل الفاتورة </summary>
    public long ReceiptSerial { get; private set; }
    /// <summary> تاريخ الفاتورة </summary>
    public DateTime ReceiptDate { get; private set; }
    /// <summary> رقم نوع الوقود </summary>
    public int? FuelTypeNo { get; private set; }
    /// <summary> رقم الفاتورة </summary>
    public int? ReceiptNo { get; private set; }
    /// <summary> رقم أول فاتورة في المجموعة </summary>
    public long? FirstBillNo { get; private set; }
    /// <summary> رقم آخر فاتورة في المجموعة </summary>
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
    /// <summary> رقم نوع الوقود المستهدف </summary>
    public int? TargetFuelTypeNo { get; private set; }
    /// <summary> حالة الدفع للنقل </summary>
    public bool? MoveDocPay { get; private set; }
    /// <summary> المستخدم الذي أضاف </summary>
    public int AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> المستخدم الذي عدل </summary>
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> رقم الشركة </summary>
    public short CompanyNo { get; private set; }
    /// <summary> رقم الفرع </summary>
    public int BranchNo { get; private set; }
    /// <summary> سنة الفرع </summary>
    public short? BranchYear { get; private set; }
    /// <summary> مستخدم الفرع </summary>
    public short? BranchUser { get; private set; }
    /// <summary> أولوية التقرير </summary>
    public long? ReportPriority { get; private set; }
    /// <summary> عدد مرات التحديث </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public Customer Customer { get; private set; } // Navigation
    public ICollection<PosCreditBillDetail> PosCreditBillDetails { get; private set; } // Inverse Navigation
}