public class CashAtBank
{
    public long? BankNo { get; private set; }
    /// <summary> كود الحساب البنكي </summary>
    public string AccountCode { get; private set; }
    /// <summary> اسم البنك (عربي) </summary>
    public string BankName { get; private set; }
    /// <summary> اسم البنك (إنجليزي) </summary>
    public string? BankEnglishName { get; private set; }
    public long BankSerial { get; private set; }
    public long? GroupNo { get; private set; }
    /// <summary> رقم الحساب البنكي </summary>
    public string? BankAccount { get; private set; }
    public int? BranchNo { get; private set; }
    /// <summary> هاتف البنك </summary>
    public string? BankTel { get; private set; }
    /// <summary> فاكس البنك </summary>
    public string? BankFax { get; private set; }
    /// <summary> صندوق البريد للبنك </summary>
    public string? BankBox { get; private set; }
    /// <summary> عنوان البنك </summary>
    public string? BankAddress { get; private set; }
    /// <summary> بريد إلكتروني للبنك </summary>
    public string? BankEmail { get; private set; }
    /// <summary> موقع البنك </summary>
    public string? BankWebsite { get; private set; }
    public short? CountryNo { get; private set; }
    public long? CityNo { get; private set; }
    public bool? MediatorFlag { get; private set; }
    public bool? Inactive { get; private set; }
    /// <summary> تاريخ التعطيل </summary>
    public DateTime? InactiveDate { get; private set; }
    /// <summary> سبب التعطيل </summary>
    public string? InactiveReason { get; private set; }
    /// <summary> صورة البنك </summary>
    public string? BankImage { get; private set; }
    /// <summary> رقم خطاب استلام </summary>
    public string? ReceiveLetter { get; private set; }
    /// <summary> رقم خطاب دفع </summary>
    public string? PaymentLetter { get; private set; }
    /// <summary> حساب وسيط لشيكات الدفع </summary>
    public string? ChqPayIntermAccount { get; private set; }
    public short? RepSample { get; private set; }
    /// <summary> تاريخ آخر تأكيد </summary>
    public DateTime? ConfirmLastDate { get; private set; }
    public long? OutCheckAutoSerial { get; private set; }
    public long? BankCode { get; private set; }
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
    /// <summary> كود شبكة البنك </summary>
    public string? BankNetworkCode { get; private set; }
    public Account Account { get; private set; } // Navigation
    public Account Account { get; private set; } // Navigation
    public BankGroup BankGroup { get; private set; } // Navigation
    public ICollection<CashAtBankBranch> CashAtBankBranchs { get; private set; } // Inverse Navigation
    public ICollection<CashAtBankDetail> CashAtBankDetails { get; private set; } // Inverse Navigation
}