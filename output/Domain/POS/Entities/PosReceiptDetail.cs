public class PosReceiptDetail
{
    public long? ReceiptNo { get; private set; }
    public long? ReceiptSerial { get; private set; }
    public long? RecordNo { get; private set; }
    public long? TerminalNo { get; private set; }
    /// <summary> قراءة سابقة (عداد/وقود) </summary>
    public int? TerminalReadPrev { get; private set; }
    /// <summary> القراءة الحالية </summary>
    public int? TerminalReadCurrent { get; private set; }
    /// <summary> الكمية </summary>
    public int? ItemQty { get; private set; }
    /// <summary> سعر الوحدة </summary>
    public int? ItemPrice { get; private set; }
    /// <summary> تاريخ آخر قراءة </summary>
    public DateTime? LastReadDate { get; private set; }
    /// <summary> وصف الجهاز </summary>
    public string? TerminalDesc { get; private set; }
    /// <summary> رقم الدفعة </summary>
    public string? BatchNo { get; private set; }
    public decimal? DiscountPercent { get; private set; }
    /// <summary> مبلغ الخصم </summary>
    public int? DiscountAmount { get; private set; }
    /// <summary> مبلغ الخصم الرئيسي </summary>
    public int? DiscountAmountMaster { get; private set; }
    /// <summary> تاريخ القراءة الحالية </summary>
    public DateTime? CurrentReadDate { get; private set; }
    public int? SaleInvoiceType { get; private set; }
    /// <summary> كود الصنف </summary>
    public string? ItemCode { get; private set; }
    public long? WarehouseCode { get; private set; }
    public int? FuelTypeNo { get; private set; }
    public long? EmployeeNo { get; private set; }
    /// <summary> مركز التكلفة </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> رقم المشروع </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> رقم النشاط </summary>
    public string? ActivityNo { get; private set; }
    public decimal? VATAmount { get; private set; }
    public decimal? VATPercent { get; private set; }
    public int AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime AddedDate { get; private set; }
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public long? UpdateCount { get; private set; }
    public short CompanyNo { get; private set; }
    public int BranchNo { get; private set; }
    public short? BranchYear { get; private set; }
    public short? BranchUser { get; private set; }
    public PosReceiptMaster PosReceiptMaster { get; private set; } // Navigation
}