public class Account
{
    /// <summary> رمز الحساب الرئيسي، معرف فريد للحساب يستخدم في جميع العمليات المحاسبية </summary>
    public string? AccountCode { get; private set; }
    /// <summary> اسم الحساب باللغة العربية، يظهر في التقارير وشجرة الحسابات </summary>
    public string AccountName { get; private set; }
    /// <summary> اسم الحساب بالإنجليزية، للعرض في الأنظمة متعددة اللغات </summary>
    public string? AccountNameEng { get; private set; }
    /// <summary> مستوى الحساب في الشجرة (مثلاً: 1=رئيسي، 2=فرعي...الخ) </summary>
    public int AccountLevel { get; private set; }
    /// <summary> رمز الحساب الأب، يحدد التسلسل الهرمي للحسابات </summary>
    public string AccountParent { get; private set; }
    /// <summary> نوع الحساب (1=تجميعي/رئيسي، 2=تحليلي/فرعي) </summary>
    public int ASM { get; private set; }
    /// <summary> رقم مجموعة الحساب المستخدمة في التقارير أو التصنيفات </summary>
    public int? AccountGrouping { get; private set; }
    /// <summary> نوع التقرير الذي يظهر الحساب فيه (ميزانية، أرباح وخسائر، ...الخ) </summary>
    public int AccountReport { get; private set; }
    /// <summary> رقم تحليلي إضافي للحساب (للاستخدامات الخاصة أو الربط مع أنظمة أخرى) </summary>
    public long? AccountAnalysis { get; private set; }
    /// <summary> رقم تصنيف الحساب (حسب تصنيفات المؤسسة) </summary>
    public int? AccountClassNo { get; private set; }
    /// <summary> هل الحساب مغلق (1=نعم/0=لا)، يمنع الحركات عليه إذا كان مغلقاً </summary>
    public bool? AccountClosed { get; private set; }
    /// <summary> نوع الحساب الافتراضي: مدين (1) أو دائن (0) </summary>
    public bool? DebitOrCredit { get; private set; }
    /// <summary> كود حساب فروق العملة المرتبط بهذا الحساب </summary>
    public string? CurrencyDiffCode { get; private set; }
    /// <summary> هل الحساب يتطلب إدخال مركز تكلفة عند ترحيل القيود </summary>
    public bool? UseCostCenter { get; private set; }
    /// <summary> هل الحساب يتطلب إدخال رقم مشروع عند تسجيل القيود </summary>
    public bool? UseProject { get; private set; }
    /// <summary> هل الحساب مرتبط بفترة زمنية محددة (مثلاً: حسابات دورية) </summary>
    public bool? ConnectionPeriod { get; private set; }
    /// <summary> هل الحساب مفضل للظهور في القوائم المختصرة أو البحث السريع </summary>
    public bool? FavoriteAccount { get; private set; }
    /// <summary> نوع تدفق الأموال لهذا الحساب (داخلي/خارجي...) </summary>
    public bool? FlowType { get; private set; }
    /// <summary> سبب إيقاف الحساب (عند جعله غير نشط) </summary>
    public string? InactiveReason { get; private set; }
    /// <summary> تاريخ إيقاف تفعيل الحساب </summary>
    public DateTime? InactiveDate { get; private set; }
    /// <summary> آخر تاريخ تم فيه تأكيد الحساب أو مراجعة رصيده </summary>
    public DateTime? ConfirmLastDate { get; private set; }
    /// <summary> رقم العملية المرتبط بالحساب (للربط مع سجلات العمليات أو التسويات) </summary>
    public long? AccountOpNo { get; private set; }
    /// <summary> نوع المصروف المرتبط بالحساب (إن وجد) </summary>
    public short? AccountExpenseType { get; private set; }
    /// <summary> هل يجب تحديد الفرع عند تسجيل المصروف على هذا الحساب </summary>
    public bool? UseExpenseBranch { get; private set; }
    /// <summary> علم يوضح أن الحساب مستورد من ملف Excel </summary>
    public bool? ImportedXls { get; private set; }
    /// <summary> نوع التفاصيل الإضافية المرتبطة بالحساب </summary>
    public short? AccountDtlType { get; private set; }
    /// <summary> هل الحساب مرتبط بنشاط معين (يجب إدخال النشاط عند استخدامه) </summary>
    public bool? UseActivity { get; private set; }
    /// <summary> رقم المستخدم الذي أنشأ الحساب </summary>
    public int? AddedByUserId { get; private set; }
    /// <summary> تاريخ إنشاء الحساب </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> رقم المستخدم الذي عدّل الحساب </summary>
    public int? UpdatedByUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل على الحساب </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> عدد مرات التحديث/التعديل على الحساب </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> أولوية ظهور الحساب في التقارير </summary>
    public long? ReportPriority { get; private set; }
    /// <summary> اسم الجهاز الذي أُنشئ الحساب منه </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز الذي تم تعديل الحساب منه </summary>
    public string? UpdatedTerminal { get; private set; }
    /// <summary> علم خاص بضرائب الاستقطاع عند المنبع (TDS) </summary>
    public bool? UseTDSFlag { get; private set; }
    /// <summary> علم يحدد ما إذا كان الحساب مرتبط بمصروفات/إيرادات مقدمة </summary>
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