public class BankChequeDetail
{
    /// <summary> رقم البنك </summary>
    public long? BankNo { get; private set; }
    /// <summary> رمز العملة </summary>
    public string? CurrencyCode { get; private set; }
    /// <summary> رقم دفتر الشيكات </summary>
    public long BookNo { get; private set; }
    /// <summary> رقم الشيك </summary>
    public long? ChequeNo { get; private set; }
    /// <summary> حالة الشيك </summary>
    public bool? ChequeStatus { get; private set; }
    /// <summary> رقم المستند المرجعي </summary>
    public long? DocumentNoRef { get; private set; }
    /// <summary> تسلسل المستند المرجعي </summary>
    public long? DocumentSerialRef { get; private set; }
    /// <summary> تاريخ المستند المرجعي </summary>
    public DateTime? DocumentDateRef { get; private set; }
    /// <summary> ملاحظات </summary>
    public string? Notes { get; private set; }
    /// <summary> توقيع الشيك (1=موقع) </summary>
    public bool? ChequeSignature { get; private set; }
    /// <summary> تاريخ التوقيع </summary>
    public DateTime? SignatureDate { get; private set; }
    /// <summary> اسم الموقع </summary>
    public string? SignaturePerson { get; private set; }
    /// <summary> اسم المستلم </summary>
    public string? ReceivedPerson { get; private set; }
    /// <summary> ملاحظات حالة الشيك </summary>
    public string? NotesChequeStatus { get; private set; }
    /// <summary> نوع المستند المرجعي </summary>
    public long? DocTypeRef { get; private set; }
    /// <summary> نوع قيد المستند المرجعي </summary>
    public long? DocJVTypeRef { get; private set; }
    /// <summary> مستخدم حالة الشيك </summary>
    public long? UserNoChequeStatus { get; private set; }
    /// <summary> تاريخ حالة الشيك </summary>
    public DateTime? DateChequeStatus { get; private set; }
    /// <summary> المستخدم الذي أضاف السطر </summary>
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> المستخدم الذي عدل السطر </summary>
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> عدد مرات التحديث </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    public CashAtBankDetail CashAtBankDetail { get; private set; } // Navigation
    public BankChequeMaster BankChequeMaster { get; private set; } // Navigation
}