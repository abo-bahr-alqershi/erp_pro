public class CashInHand
{
    public long? CashNo { get; private set; }
    /// <summary> اسم الصندوق (عربي) </summary>
    public string CashName { get; private set; }
    /// <summary> اسم الصندوق (إنجليزي) </summary>
    public string? CashEnglishName { get; private set; }
    /// <summary> كود الحساب المحاسبي </summary>
    public string AccountCode { get; private set; }
    public long CashSerial { get; private set; }
    public bool? CashType { get; private set; }
    public bool? UseCashIncome { get; private set; }
    public bool? POSSystem { get; private set; }
    public int? BranchNo { get; private set; }
    /// <summary> تاريخ آخر تأكيد للصندوق </summary>
    public DateTime? ConfirmLastDate { get; private set; }
    public bool? Inactive { get; private set; }
    /// <summary> تاريخ التعطيل </summary>
    public DateTime? InactiveDate { get; private set; }
    /// <summary> سبب التعطيل </summary>
    public string? InactiveReason { get; private set; }
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public long? UpdateCount { get; private set; }
    public long? ReportPriority { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public short? ReceiptSerialType { get; private set; }
    public short? PaymentTypeNoDefault { get; private set; }
    public short? ReceivedTypeNoDefault { get; private set; }
    public bool? MediatorFlag { get; private set; }
    public long? GroupNo { get; private set; }
    public Account Account { get; private set; } // Navigation
    public ICollection<CashInHandDetail> CashInHandDetails { get; private set; } // Inverse Navigation
}