public class CashAtBankBranch
{
    public short? BranchBankNo { get; private set; }
    public long? BankNo { get; private set; }
    /// <summary> كود الحساب البنكي </summary>
    public string AccountCode { get; private set; }
    /// <summary> رصيد افتتاحي محلي </summary>
    public int? OpenBalanceLocal { get; private set; }
    /// <summary> رصيد افتتاحي أجنبي </summary>
    public int? OpenBalanceForeign { get; private set; }
    /// <summary> الرصيد الحالي محلي </summary>
    public int? CurrentBalanceLocal { get; private set; }
    /// <summary> الرصيد الحالي أجنبي </summary>
    public int? CurrentBalanceForeign { get; private set; }
    public bool? Inactive { get; private set; }
    /// <summary> تاريخ التعطيل </summary>
    public DateTime? InactiveDate { get; private set; }
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
    public CashAtBank CashAtBank { get; private set; } // Navigation
}