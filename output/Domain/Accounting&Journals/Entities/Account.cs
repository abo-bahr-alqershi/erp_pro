public class Account
{
    /// <summary> رمز الحساب الرئيسي، معرف فريد للحساب يستخدم في جميع العمليات المحاسبية </summary>
    public string? AccountCode { get; private set; }
    /// <summary> اسم الحساب باللغة العربية، يظهر في التقارير وشجرة الحسابات </summary>
    public string AccountName { get; private set; }
    /// <summary> اسم الحساب بالإنجليزية، للعرض في الأنظمة متعددة اللغات </summary>
    public string? AccountNameEng { get; private set; }
    public int AccountLevel { get; private set; }
    /// <summary> رمز الحساب الأب، يحدد التسلسل الهرمي للحسابات </summary>
    public string AccountParent { get; private set; }
    public int ASM { get; private set; }
    public int? AccountGrouping { get; private set; }
    public int AccountReport { get; private set; }
    public long? AccountAnalysis { get; private set; }
    public int? AccountClassNo { get; private set; }
    public bool? AccountClosed { get; private set; }
    public bool? DebitOrCredit { get; private set; }
    /// <summary> كود حساب فروق العملة المرتبط بهذا الحساب </summary>
    public string? CurrencyDiffCode { get; private set; }
    public bool? UseCostCenter { get; private set; }
    public bool? UseProject { get; private set; }
    public bool? ConnectionPeriod { get; private set; }
    public bool? FavoriteAccount { get; private set; }
    public bool? FlowType { get; private set; }
    /// <summary> سبب إيقاف الحساب (عند جعله غير نشط) </summary>
    public string? InactiveReason { get; private set; }
    /// <summary> تاريخ إيقاف تفعيل الحساب </summary>
    public DateTime? InactiveDate { get; private set; }
    /// <summary> آخر تاريخ تم فيه تأكيد الحساب أو مراجعة رصيده </summary>
    public DateTime? ConfirmLastDate { get; private set; }
    public long? AccountOpNo { get; private set; }
    public short? AccountExpenseType { get; private set; }
    public bool? UseExpenseBranch { get; private set; }
    public bool? ImportedXls { get; private set; }
    public short? AccountDtlType { get; private set; }
    public bool? UseActivity { get; private set; }
    public int? AddedByUserId { get; private set; }
    /// <summary> تاريخ إنشاء الحساب </summary>
    public DateTime? AddedDate { get; private set; }
    public int? UpdatedByUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل على الحساب </summary>
    public DateTime? UpdatedDate { get; private set; }
    public long? UpdateCount { get; private set; }
    public long? ReportPriority { get; private set; }
    /// <summary> اسم الجهاز الذي أُنشئ الحساب منه </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز الذي تم تعديل الحساب منه </summary>
    public string? UpdatedTerminal { get; private set; }
    public bool? UseTDSFlag { get; private set; }
    public bool? AdvExpRevenueFlag { get; private set; }
    public AccountGrouping AccountGrouping { get; private set; } // Navigation
    public AccountReportType AccountReportType { get; private set; } // Navigation
    public AccountType AccountType { get; private set; } // Navigation
    public ICollection<AccountCurrency> AccountCurrencies { get; private set; } // Inverse Navigation
    public ICollection<CashAtBank> CashAtBanks { get; private set; } // Inverse Navigation
    public ICollection<CashInHand> CashInHands { get; private set; } // Inverse Navigation
    public ICollection<Customer> Customers { get; private set; } // Inverse Navigation
    public ICollection<CustomerGroup> CustomerGroups { get; private set; } // Inverse Navigation
    public ICollection<CustomerRequest> CustomerRequests { get; private set; } // Inverse Navigation
    public ICollection<TaxAccount> TaxAccounts { get; private set; } // Inverse Navigation
    public ICollection<TaxCodeDetail> TaxCodeDetails { get; private set; } // Inverse Navigation
    public ICollection<BankAdjustMaster> BankAdjustMasters { get; private set; } // Inverse Navigation
    public ICollection<CurrencyDifferenceTmp> CurrencyDifferenceTmps { get; private set; } // Inverse Navigation
    public ICollection<Supplier> Suppliers { get; private set; } // Inverse Navigation
    public ICollection<SalesCharges> SalesChargeses { get; private set; } // Inverse Navigation
    public ICollection<SupplierGroup> SupplierGroups { get; private set; } // Inverse Navigation
    public ICollection<Warehouse> Warehouses { get; private set; } // Inverse Navigation
}