public class CashAtBankBranch
{
    /// <summary> رقم البنك الفرعي </summary>
    public short? BranchBankNo { get; private set; }
    /// <summary> رقم البنك </summary>
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
    /// <summary> معطل (1=نعم) </summary>
    public bool? Inactive { get; private set; }
    /// <summary> تاريخ التعطيل </summary>
    public DateTime? InactiveDate { get; private set; }
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
    /// <summary> أولوية التقرير </summary>
    public long? ReportPriority { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public CashAtBank CashAtBank { get; private set; } // Navigation
}