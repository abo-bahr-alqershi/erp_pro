public class ParameterGeneral
{
    /// <summary> رقم السطر/المعيار </summary>
    public bool? ParameterNo { get; private set; }
    /// <summary> مراكز التكلفة فعّالة </summary>
    public bool CostCenterAvailable { get; private set; }
    /// <summary> ترحيل على مراكز التكلفة </summary>
    public bool CostCenterPosting { get; private set; }
    /// <summary> تفعيل المشاريع </summary>
    public bool UseProjects { get; private set; }
    /// <summary> تفعيل الأنشطة </summary>
    public bool UseActivity { get; private set; }
    /// <summary> نوع الترحيل </summary>
    public bool? TypeOfPosting { get; private set; }
    /// <summary> ترحيل خصم لكل صنف </summary>
    public bool PostDiscountPerItems { get; private set; }
    /// <summary> استخدام التصدير إلى Excel </summary>
    public bool? UseExcel { get; private set; }
    /// <summary> مسار ملفات Excel </summary>
    public string? PathExcel { get; private set; }
    /// <summary> نظام الحسابات مستقل </summary>
    public bool UseIndividualGLSystem { get; private set; }
    /// <summary> نظام المخزون مستقل </summary>
    public bool UseIndividualInventorySystem { get; private set; }
    /// <summary> رقم برنامج خاص </summary>
    public short? SpecialProgram { get; private set; }
    /// <summary> تفعيل ضريبة القيمة المضافة </summary>
    public bool UseVAT { get; private set; }
    /// <summary> تاريخ تفعيل القيمة المضافة </summary>
    public DateTime? ActiveVATDate { get; private set; }
    /// <summary> السماح بإلغاء الترحيل </summary>
    public bool? UseUnposting { get; private set; }
    /// <summary> نوع الرأس الرئيسي </summary>
    public bool HeadType { get; private set; }
    /// <summary> تقييد الاتصال من جهاز واحد </summary>
    public bool? TerminalConnectionDetermined { get; private set; }
    /// <summary> عدم السماح بأكثر من اتصال من نفس المستخدم </summary>
    public bool TerminalNotMoreOne { get; private set; }
    /// <summary> تفعيل مراجعة المستندات </summary>
    public bool UseAuditDoc { get; private set; }
    /// <summary> إظهار تقارير المحرك </summary>
    public bool ShowEngineReport { get; private set; }
    /// <summary> إظهار تقارير المعايير </summary>
    public bool ShowParameterReport { get; private set; }
    /// <summary> إظهار زر إكسل في التقارير </summary>
    public bool ShowXLSButtonReport { get; private set; }
    /// <summary> آخر تحديث </summary>
    public DateTime? LastUpdate { get; private set; }
    /// <summary> احتساب ضريبة الربح </summary>
    public bool? UseVATProfit { get; private set; }
    /// <summary> نسبة ضريبة الربح </summary>
    public int? VATProfitPercent { get; private set; }
    /// <summary> أقل مبلغ ربح للضريبة </summary>
    public int? MinProfitAmount { get; private set; }
    /// <summary> تفعيل توازن مراكز التكلفة </summary>
    public bool? UseBalancedCostCenter { get; private set; }
    /// <summary> تفعيل توازن الفروع </summary>
    public bool? UseBalancedBranch { get; private set; }
    /// <summary> عدد محاولات الدخول الخاطئة لتعطيل المستخدم </summary>
    public short? InactiveUserFailEntryCount { get; private set; }
    /// <summary> الحد الأدنى لطول كلمة المرور </summary>
    public short? MinUserPasswordLength { get; private set; }
    /// <summary> آخر تاريخ دخول </summary>
    public DateTime? LastLoginDate { get; private set; }
    /// <summary> آخر تاريخ ترحيل مسموح </summary>
    public DateTime? MaxPostDate { get; private set; }
    /// <summary> تفعيل ترحيل المشاريع </summary>
    public bool? ProjectPosting { get; private set; }
    /// <summary> تفعيل ترحيل الأنشطة </summary>
    public bool? ActivityPosting { get; private set; }
    /// <summary> ترقيم الموظفين تلقائي </summary>
    public bool EmployeeAutoNo { get; private set; }
    /// <summary> الحد الأعلى لطول رقم الموظف </summary>
    public short EmployeeNoMaxLength { get; private set; }
    /// <summary> الحد الأدنى لطول رقم الموظف </summary>
    public short EmployeeNoMinLength { get; private set; }
    /// <summary> نوع صلاحيات الموظف </summary>
    public bool? EmployeePrivilegeType { get; private set; }
    /// <summary> رقم إجباري للتقرير </summary>
    public bool? ReportForceNo { get; private set; }
    /// <summary> الأسعار شاملة الضريبة </summary>
    public bool? UsePriceIncludeVAT { get; private set; }
    /// <summary> مسار ملفات الموبايل </summary>
    public string? MobileFilePath { get; private set; }
    /// <summary> نوع فترة الضريبة </summary>
    public bool? VATPeriodType { get; private set; }
    /// <summary> عدم السماح بعدة فروع لنفس المستخدم </summary>
    public bool? NotAllowMoreBranchUserPrivilege { get; private set; }
    /// <summary> اللقب يبدأ باسم الموظف </summary>
    public bool? LastNameStartEmployeeName { get; private set; }
    /// <summary> لا يتحقق من كود مركز التكلفة </summary>
    public bool? NoCheckCostCenterCode { get; private set; }
    /// <summary> تسلسل التفاصيل المحاسبية </summary>
    public short? AccountDetailSequence { get; private set; }
    /// <summary> طريقة ترحيل الضرائب </summary>
    public short? TaxPostMethod { get; private set; }
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
    /// <summary> أول سنة عرض افتراضية </summary>
    public short? StartCreateViewYear { get; private set; }
    /// <summary> طول كود الضريبة </summary>
    public short? TaxCodeLength { get; private set; }
    /// <summary> أول سنة عرض افتراضية للمخزون </summary>
    public short? StartCreateViewYearInv { get; private set; }
    /// <summary> رقم تسلسل الموظف </summary>
    public long? EmployeeNoSequenceField { get; private set; }
    /// <summary> مسار تصدير افتراضي </summary>
    public string? DefaultExportDirPath { get; private set; }
    /// <summary> مسار تصدير تفصيلي </summary>
    public string? DefaultExportDirPathDtl { get; private set; }
    /// <summary> رابط وثيقة الويب </summary>
    public string? WebDocLink { get; private set; }
    /// <summary> نوع توازن الفروع </summary>
    public short? BranchBalanceType { get; private set; }
    /// <summary> طريقة ترحيل الضريبة </summary>
    public short? VATPostMethod { get; private set; }
    /// <summary> تفعيل TDS </summary>
    public bool? UseTDSFlag { get; private set; }
    /// <summary> الحد الأدنى للحروف في كلمة المرور </summary>
    public short? MinUserPasswordLetter { get; private set; }
    /// <summary> الحد الأدنى للحروف الكبيرة في كلمة المرور </summary>
    public short? MinUserPasswordUpper { get; private set; }
    /// <summary> الحد الأدنى للحروف الصغيرة في كلمة المرور </summary>
    public short? MinUserPasswordLower { get; private set; }
    /// <summary> الحد الأدنى للأرقام في كلمة المرور </summary>
    public short? MinUserPasswordDigit { get; private set; }
    /// <summary> الحد الأدنى للرموز في كلمة المرور </summary>
    public short? MinUserPasswordSpecial { get; private set; }
    /// <summary> ربط SDFA </summary>
    public bool? UseConnectionSDFA { get; private set; }
    /// <summary> نوع تسلسل الموظف </summary>
    public bool? EmployeeNoSequenceType { get; private set; }
    /// <summary> تفعيل اعتماد المستند حسب مستوى المستخدم </summary>
    public bool? UseDocApprovedByUserLevel { get; private set; }
    /// <summary> تفعيل إرسال رسائل ويب </summary>
    public bool? UseSendWebMsg { get; private set; }
}