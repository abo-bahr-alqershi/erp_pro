public class ParameterGeneral
{
    public bool? ParameterNo { get; private set; }
    public bool CostCenterAvailable { get; private set; }
    public bool CostCenterPosting { get; private set; }
    public bool UseProjects { get; private set; }
    public bool UseActivity { get; private set; }
    public bool? TypeOfPosting { get; private set; }
    public bool PostDiscountPerItems { get; private set; }
    public bool? UseExcel { get; private set; }
    /// <summary> مسار ملفات الإكسل </summary>
    public string? PathExcel { get; private set; }
    public bool UseIndividualGLSystem { get; private set; }
    public bool UseIndividualInventorySystem { get; private set; }
    public short? SpecialProgram { get; private set; }
    public bool UseVAT { get; private set; }
    /// <summary> تاريخ تفعيل الضريبة </summary>
    public DateTime? ActiveVATDate { get; private set; }
    public bool? UseUnposting { get; private set; }
    public bool HeadType { get; private set; }
    public bool? ConnectDetermineTerminal { get; private set; }
    public bool ConnectNotMoreOne { get; private set; }
    public bool UseAuditDocument { get; private set; }
    public bool ShowEngineReport { get; private set; }
    public bool ShowParameterReport { get; private set; }
    public bool ShowXlsButtonReport { get; private set; }
    /// <summary> آخر تحديث </summary>
    public DateTime? LastUpdate { get; private set; }
    public bool? UseVATProfit { get; private set; }
    /// <summary> نسبة ضريبة الأرباح </summary>
    public int? VATProfitPercent { get; private set; }
    /// <summary> الحد الأدنى للأرباح </summary>
    public int? MinProfitAmount { get; private set; }
    public bool? UseBalancedCostCenter { get; private set; }
    public bool? UseBalancedBranch { get; private set; }
    public short? InactiveUserFailEntryCount { get; private set; }
    public short? MinUserPasswordLength { get; private set; }
    /// <summary> آخر دخول </summary>
    public DateTime? LastDateLogin { get; private set; }
    /// <summary> أقصى تاريخ للترحيل </summary>
    public DateTime? MaxPostDate { get; private set; }
    public bool? ProjectPosting { get; private set; }
    public bool? ActivityPosting { get; private set; }
    public bool EmployeeNoAuto { get; private set; }
    public short EmployeeNoMaxLength { get; private set; }
    public short EmployeeNoMinLength { get; private set; }
    public bool? EmployeePrivilegeType { get; private set; }
    public bool? ReportForceNo { get; private set; }
    public bool? UsePriceIncludeVAT { get; private set; }
    /// <summary> مسار ملفات الجوال </summary>
    public string? MobileFilePath { get; private set; }
    public bool? VATPeriodType { get; private set; }
    public bool? NotAllowMoreBranchUserLightPriv { get; private set; }
    public bool? LastNameStartEmployeeName { get; private set; }
    public bool? NoCheckFccCode { get; private set; }
    public short? AccountDetailSequence { get; private set; }
    public short? TaxPostMethod { get; private set; }
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public long? UpdateCount { get; private set; }
    public long? ReportPriority { get; private set; }
    /// <summary> الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public short? StartCreateViewYear { get; private set; }
    public short? TaxCodeLength { get; private set; }
    public short? StartCreateViewYearInv { get; private set; }
    public long? EmployeeNoSequenceField { get; private set; }
    /// <summary> المسار الافتراضي للتصدير </summary>
    public string? DefaultExportDirPath { get; private set; }
    /// <summary> تفاصيل مسار التصدير الافتراضي </summary>
    public string? DefaultExportDirPathDetail { get; private set; }
    /// <summary> رابط مستند ويب </summary>
    public string? WebDocumentLink { get; private set; }
    public short? BalanceBranchType { get; private set; }
    public short? VATPostMethod { get; private set; }
    public bool? UseTDSFlag { get; private set; }
    public short? MinUserPwdLetter { get; private set; }
    public short? MinUserPwdUpper { get; private set; }
    public short? MinUserPwdLower { get; private set; }
    public short? MinUserPwdDigit { get; private set; }
    public short? MinUserPwdSpecial { get; private set; }
    public bool? UseConnectSDFA { get; private set; }
    public bool? EmployeeNoSequenceType { get; private set; }
    public bool? UseDocApprovedByUserLevel { get; private set; }
    public bool? UseSendWebMessage { get; private set; }
}