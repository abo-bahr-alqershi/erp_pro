public class PosCoupon
{
    public long? ReceiptNo { get; private set; }
    public long? ReceiptSerial { get; private set; }
    public long? CouponNo { get; private set; }
    public int? FuelTypeNo { get; private set; }
    /// <summary> كود العميل </summary>
    public string? CustomerCode { get; private set; }
    /// <summary> الكمية </summary>
    public int? ItemQty { get; private set; }
    /// <summary> سعر الوحدة </summary>
    public int? ItemPrice { get; private set; }
    /// <summary> تاريخ الإصدار </summary>
    public DateTime? IssueDate { get; private set; }
    /// <summary> تاريخ الانتهاء </summary>
    public DateTime? ExpireDate { get; private set; }
    /// <summary> وصف الكوبون </summary>
    public string? CouponDesc { get; private set; }
    /// <summary> رقم الدفعة </summary>
    public string? BatchNo { get; private set; }
    public decimal? DiscountPercent { get; private set; }
    /// <summary> مبلغ الخصم </summary>
    public int? DiscountAmount { get; private set; }
    /// <summary> مبلغ الخصم الرئيسي </summary>
    public int? DiscountAmountMaster { get; private set; }
    public long? EmployeeNo { get; private set; }
    /// <summary> كود الصنف </summary>
    public string? ItemCode { get; private set; }
    public long? WarehouseCode { get; private set; }
    public long? TerminalNo { get; private set; }
    public long? RecordNo { get; private set; }
    /// <summary> مركز التكلفة </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> رقم المشروع </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> رقم النشاط </summary>
    public string? ActivityNo { get; private set; }
    public decimal? VATAmount { get; private set; }
    public decimal? VATPercent { get; private set; }
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public long? ReportPriority { get; private set; }
    public long? UpdateCount { get; private set; }
    public short CompanyNo { get; private set; }
    public int BranchNo { get; private set; }
    public short? BranchYear { get; private set; }
    public short? BranchUser { get; private set; }
    /// <summary> الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public PosReceiptMaster PosReceiptMaster { get; private set; } // Navigation
}