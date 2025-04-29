public class PosReceiptDetail
{
    /// <summary> رقم الفاتورة </summary>
    public long? ReceiptNo { get; private set; }
    /// <summary> تسلسل الفاتورة </summary>
    public long? ReceiptSerial { get; private set; }
    /// <summary> رقم السطر/التفصيل </summary>
    public long? RecordNo { get; private set; }
    /// <summary> رقم نقطة البيع/الجهاز </summary>
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
    /// <summary> نسبة الخصم </summary>
    public decimal? DiscountPercent { get; private set; }
    /// <summary> مبلغ الخصم </summary>
    public int? DiscountAmount { get; private set; }
    /// <summary> مبلغ الخصم الرئيسي </summary>
    public int? DiscountAmountMaster { get; private set; }
    /// <summary> تاريخ القراءة الحالية </summary>
    public DateTime? CurrentReadDate { get; private set; }
    /// <summary> نوع فاتورة البيع </summary>
    public int? SaleInvoiceType { get; private set; }
    /// <summary> كود الصنف </summary>
    public string? ItemCode { get; private set; }
    /// <summary> رقم المستودع </summary>
    public long? WarehouseCode { get; private set; }
    /// <summary> رقم نوع الوقود </summary>
    public int? FuelTypeNo { get; private set; }
    /// <summary> رقم الموظف </summary>
    public long? EmployeeNo { get; private set; }
    /// <summary> مركز التكلفة </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> رقم المشروع </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> رقم النشاط </summary>
    public string? ActivityNo { get; private set; }
    /// <summary> مبلغ الضريبة </summary>
    public decimal? VATAmount { get; private set; }
    /// <summary> نسبة الضريبة </summary>
    public decimal? VATPercent { get; private set; }
    /// <summary> المستخدم الذي أضاف </summary>
    public int AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime AddedDate { get; private set; }
    /// <summary> المستخدم الذي عدل </summary>
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> عدد مرات التحديث </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> رقم الشركة </summary>
    public short CompanyNo { get; private set; }
    /// <summary> رقم الفرع </summary>
    public int BranchNo { get; private set; }
    /// <summary> سنة الفرع </summary>
    public short? BranchYear { get; private set; }
    /// <summary> مستخدم الفرع </summary>
    public short? BranchUser { get; private set; }
    public PosReceiptMaster PosReceiptMaster { get; private set; } // Navigation
}