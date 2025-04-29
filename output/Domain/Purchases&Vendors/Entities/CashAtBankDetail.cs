public class CashAtBankDetail
{
    public long? BankNo { get; private set; }
    /// <summary> كود الحساب البنكي </summary>
    public string? AccountCode { get; private set; }
    /// <summary> رمز العملة </summary>
    public string? CurrencyCode { get; private set; }
    /// <summary> رصيد افتتاحي بالعملة المحلية </summary>
    public int? OpenBalanceLocal { get; private set; }
    /// <summary> رصيد افتتاحي بالعملة الأجنبية </summary>
    public int? OpenBalanceForeign { get; private set; }
    /// <summary> الرصيد الحالي بالعملة المحلية </summary>
    public int? CurrentBalanceLocal { get; private set; }
    /// <summary> الرصيد الحالي بالعملة الأجنبية </summary>
    public int? CurrentBalanceForeign { get; private set; }
    public bool? Inactive { get; private set; }
    /// <summary> تاريخ التعطيل </summary>
    public DateTime? InactiveDate { get; private set; }
    /// <summary> الحد الأدنى للرصد </summary>
    public int? MinLimitAmount { get; private set; }
    /// <summary> الحد الأعلى للرصد </summary>
    public int? MaxLimitAmount { get; private set; }
    /// <summary> الحد الأعلى للمعاملة </summary>
    public int? MaxLimitTransactionAmount { get; private set; }
    /// <summary> الحد الأدنى للمعاملة </summary>
    public int? MinLimitTransactionAmount { get; private set; }
    public bool? PassLimit { get; private set; }
    /// <summary> رقم الحساب البنكي (تفصيلي) </summary>
    public string? BankAccount { get; private set; }
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public long? UpdateCount { get; private set; }
    public AccountCurrency AccountCurrency { get; private set; } // Navigation
    public CashAtBank CashAtBank { get; private set; } // Navigation
    public ICollection<BankChequeDetail> BankChequeDetails { get; private set; } // Inverse Navigation
    public ICollection<BankAdjustDetail> BankAdjustDetails { get; private set; } // Inverse Navigation
    public ICollection<BankAdjustMaster> BankAdjustMasters { get; private set; } // Inverse Navigation
}