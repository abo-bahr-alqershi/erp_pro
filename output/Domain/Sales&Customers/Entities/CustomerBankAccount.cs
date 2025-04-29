public class CustomerBankAccount
{
    /// <summary> كود العميل الرئيسي </summary>
    public string? CustomerCode { get; private set; }
    /// <summary> كود الحساب البنكي للعميل </summary>
    public string? BankAccountCode { get; private set; }
    /// <summary> رمز العملة للحساب البنكي </summary>
    public string? CurrencyCode { get; private set; }
    public bool? DefaultFlag { get; private set; }
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public long? UpdateCount { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public Customer Customer { get; private set; } // Navigation
}