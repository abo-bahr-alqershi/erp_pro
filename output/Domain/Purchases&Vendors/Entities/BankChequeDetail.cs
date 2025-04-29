public class BankChequeDetail
{
    public long? BankNo { get; private set; }
    /// <summary> رمز العملة </summary>
    public string? CurrencyCode { get; private set; }
    public long BookNo { get; private set; }
    public long? ChequeNo { get; private set; }
    public bool? ChequeStatus { get; private set; }
    public long? DocumentNoRef { get; private set; }
    public long? DocumentSerialRef { get; private set; }
    /// <summary> تاريخ المستند المرجعي </summary>
    public DateTime? DocumentDateRef { get; private set; }
    /// <summary> ملاحظات </summary>
    public string? Notes { get; private set; }
    public bool? ChequeSignature { get; private set; }
    /// <summary> تاريخ التوقيع </summary>
    public DateTime? SignatureDate { get; private set; }
    /// <summary> اسم الموقع </summary>
    public string? SignaturePerson { get; private set; }
    /// <summary> اسم المستلم </summary>
    public string? ReceivedPerson { get; private set; }
    /// <summary> ملاحظات حالة الشيك </summary>
    public string? NotesChequeStatus { get; private set; }
    public long? DocTypeRef { get; private set; }
    public long? DocJVTypeRef { get; private set; }
    public long? UserNoChequeStatus { get; private set; }
    /// <summary> تاريخ حالة الشيك </summary>
    public DateTime? DateChequeStatus { get; private set; }
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public long? UpdateCount { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    public CashAtBankDetail CashAtBankDetail { get; private set; } // Navigation
    public BankChequeMaster BankChequeMaster { get; private set; } // Navigation
}