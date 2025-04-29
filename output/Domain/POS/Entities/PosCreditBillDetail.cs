public class PosCreditBillDetail
{
    public long BillNo { get; private set; }
    public long ReceiptSerial { get; private set; }
    public long? ReceiptNo { get; private set; }
    public bool? ProcessedFlag { get; private set; }
    public bool? Inactive { get; private set; }
    public int? InactiveUserId { get; private set; }
    /// <summary> تاريخ التعطيل </summary>
    public DateTime? InactiveDate { get; private set; }
    /// <summary> سبب التعطيل </summary>
    public string? InactiveReason { get; private set; }
    public bool? MoveBillPay { get; private set; }
    public long? ReceiptNoPay { get; private set; }
    public long? ReceiptSerialPay { get; private set; }
    public bool? PeriodYear { get; private set; }
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
    /// <summary> كود العميل </summary>
    public string? CustomerCode { get; private set; }
    public int? FuelTypeNo { get; private set; }
    public PosCreditBillMaster PosCreditBillMaster { get; private set; } // Navigation
    public Customer Customer { get; private set; } // Navigation
}