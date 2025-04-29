public class CustomerDegree
{
    /// <summary> كود درجة أو تصنيف العميل </summary>
    public short? CustomerDegree { get; private set; }
    /// <summary> اسم الدرجة بالعربية </summary>
    public string? CustomerDegreeArabicName { get; private set; }
    /// <summary> اسم الدرجة بالإنجليزية </summary>
    public string? CustomerDegreeEnglishName { get; private set; }
    /// <summary> قيمة الدرجة أو التصنيف (وزن أو نسبة) </summary>
    public int? DegreeValue { get; private set; }
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
    public string CGroupAName { get; private set; }
    public string? CGroupEName { get; private set; }
    public string? CACode { get; private set; }
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
    public string CAName { get; private set; }
    public string? CEName { get; private set; }
    public string CACode { get; private set; }
    public long? CstSeq { get; private set; }
    public long CGroupCode { get; private set; }
    public string? CTaxCode { get; private set; }
    public string? CBoxCode { get; private set; }
    public string? CAddress { get; private set; }
    public short? CntryNo { get; private set; }
    public long? ProvNo { get; private set; }
    public long? CityNo { get; private set; }
    public long? RCode { get; private set; }
    public string? RepCode { get; private set; }
    public long? RouteNo { get; private set; }
    public long? Sortinroute { get; private set; }
    public string? Gps { get; private set; }
    public long? ColNo { get; private set; }
    public string? CcCode { get; private set; }
    public short? CreditPeriod { get; private set; }
    public string? CPhone { get; private set; }
    public string? CFax { get; private set; }
    public string? CBox { get; private set; }
    public string? CPerson { get; private set; }
    public string? CEMail { get; private set; }
    public string? CWebSite { get; private set; }
    public short? CClass { get; private set; }
    /// <summary> كود درجة أو تصنيف العميل </summary>
    public short? CustomerDegree { get; private set; }
    public string? CMobile { get; private set; }
    public DateTime? CSince { get; private set; }
    public bool? Inactive { get; private set; }
    public string? InactiveRes { get; private set; }
    public DateTime? InactiveDate { get; private set; }
    public string? CVendor { get; private set; }
    public string? CNote { get; private set; }
    public int? DiscPer { get; private set; }
    public bool? ConnRemSys { get; private set; }
    public bool? InactiveSales { get; private set; }
    public string? GName { get; private set; }
    public string? GAddress { get; private set; }
    public DateTime? GStartDate { get; private set; }
    public DateTime? GExpireDate { get; private set; }
    public bool? GType { get; private set; }
    public int? GAmt { get; private set; }
    public bool? GStatus { get; private set; }
    public string? GFinCenter { get; private set; }
    public string? GWork { get; private set; }
    public DateTime? GDocDate { get; private set; }
    public string? GRegCourt { get; private set; }
    public string? GRegTrada { get; private set; }
    public string? GFileTrada { get; private set; }
    public string? GTel { get; private set; }
    public string? GFax { get; private set; }
    public bool? BlkLst { get; private set; }
    public string? BlkLstRes { get; private set; }
    public bool? CSalesMan { get; private set; }
    public string? LicenseNo { get; private set; }
    public string? LicenseOwner { get; private set; }
    public string? ResponsPerson { get; private set; }
    public string? SignAuthPerson { get; private set; }
    public int? Serialno { get; private set; }
    public long? DriverNo { get; private set; }
    public long? AcOpNo { get; private set; }
    public bool? ImpXls { get; private set; }
    public string? CParent { get; private set; }
    public int? ConnBrnNo { get; private set; }
    public bool? SendMsg { get; private set; }
    public int? AprvUId { get; private set; }
    public string? AprvDsc { get; private set; }
    public DateTime? AprvDate { get; private set; }
    public int? Approved { get; private set; }
    public long? DocSrl { get; private set; }
    public short CmpNo { get; private set; }
    public short? BrnYear { get; private set; }
    public short? BrnUsr { get; private set; }
    public bool? CshCst { get; private set; }
    public string? ResponsPersonJob { get; private set; }
    public int? CstCrLmtLocal { get; private set; }
    public int? CstInvLmtLocal { get; private set; }
    public bool? CstLmtTyp { get; private set; }
    public int? CstLmtPer { get; private set; }
    public DateTime? CrdEndDateAh { get; private set; }
    public DateTime? CrdIssuseDateAh { get; private set; }
    public DateTime? BrthDate { get; private set; }
    public DateTime? BrthDateAh { get; private set; }
    public string? BrthPlc { get; private set; }
    public string? WorkPlc { get; private set; }
    public string? SrcInc { get; private set; }
    public int? SrcIncRate { get; private set; }
    public short? MrtlStat { get; private set; }
    public string? CmpnyWork { get; private set; }
    public bool? CFinscanStatus { get; private set; }
    public DateTime? OpnFileDate { get; private set; }
    public DateTime? EndFileDate { get; private set; }
    public string? HomeAddress { get; private set; }
    public string? SignImgNm { get; private set; }
    public string? PassNo { get; private set; }
    public string? PassIssusePlac { get; private set; }
    public DateTime? PassIssuseDate { get; private set; }
    public DateTime? PassEndDate { get; private set; }
    public string? NameInPass { get; private set; }
    public short? AddIncmSrce { get; private set; }
    public long? AddIncmRate { get; private set; }
    public int? CntRemMnthExpct { get; private set; }
    public string? OthrCmpBnk { get; private set; }
    public string? CommRegNo { get; private set; }
    public string? RegIssusePlac { get; private set; }
    public DateTime? RegIssuseDate { get; private set; }
    public DateTime? RegEndDate { get; private set; }
    public string? CmpActiv { get; private set; }
    public bool? CstGcc { get; private set; }
    public DateTime? CstFileUpDate { get; private set; }
    public int? CstBnfType { get; private set; }
    public string? CstMainImgNm { get; private set; }
    public int? AdUPhoto { get; private set; }
    public bool? CstVatGrpFlg { get; private set; }
    public bool CstDealFlg { get; private set; }
    public bool? CstExcptQtPrmFlg { get; private set; }
    public bool CstExchFlg { get; private set; }
    public int? CClassTyp { get; private set; }
    public int? CRisk { get; private set; }
    public long? CBusSec { get; private set; }
    public short? CPerFee { get; private set; }
    public string? CAcctFee { get; private set; }
    public bool AutoApprvd { get; private set; }
    public int? AprvRskUId { get; private set; }
    public string? AprvRskDsc { get; private set; }
    public DateTime? AprvRskDate { get; private set; }
    public int? ApprvdRsk { get; private set; }
    public string? Field1 { get; private set; }
    public string? Field2 { get; private set; }
    public string? Field3 { get; private set; }
    public string? Field4 { get; private set; }
    public string? Field5 { get; private set; }
    public string? Field6 { get; private set; }
    public string? Field7 { get; private set; }
    public string? Field8 { get; private set; }
    public string? Field9 { get; private set; }
    public string? Field10 { get; private set; }
    public string? Field11 { get; private set; }
    public string? Field12 { get; private set; }
    public string? Field13 { get; private set; }
    public string? Field14 { get; private set; }
    public string? Field15 { get; private set; }
    public string? Field16 { get; private set; }
    public string? Field17 { get; private set; }
    public string? Field18 { get; private set; }
    public string? Field19 { get; private set; }
    public string? Field20 { get; private set; }
    public string? Latitude { get; private set; }
    public string? Longitude { get; private set; }
    public string? GpsColor { get; private set; }
    public bool? FavAc { get; private set; }
    public DateTime? FActvDate { get; private set; }
    public DateTime? TActvDate { get; private set; }
    public string? SecretKey { get; private set; }
    public short? AllowPrdAftrDue { get; private set; }
    public DateTime? BlkLstDate { get; private set; }
    public string? CAge { get; private set; }
    public bool? CGender { get; private set; }
    public string? InsuranceNo { get; private set; }
    public string? ApprovalNo { get; private set; }
    public bool? CInsurance { get; private set; }
    public string? CCodeTrgt { get; private set; }
    public bool? InsrnceCst { get; private set; }
    public long? InsrnceCmpNo { get; private set; }
    public int? NtnltyNo { get; private set; }
    public short? TypCrd { get; private set; }
    public string? CrdNo { get; private set; }
    public string? CrdIssusePlac { get; private set; }
    public DateTime? CrdIssuseDate { get; private set; }
    public DateTime? CrdEndDate { get; private set; }
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
    public string? CrNo { get; private set; }
    public string? ActvtyNm { get; private set; }
    public string? NisNo { get; private set; }
    public string? NaiDsc { get; private set; }
    public string? EqCptl { get; private set; }
    public bool AgntFlg { get; private set; }
    public string? CIdPlace { get; private set; }
    public string? CId { get; private set; }
    public DateTime? CIdIssDate { get; private set; }
    public DateTime? CIdExpDate { get; private set; }
    public long? CProff { get; private set; }
    public long? CIdType { get; private set; }
    public bool? InsrtdFlg { get; private set; }
    public bool? PltclRltnFlg { get; private set; }
    public string? PltclRltnWith { get; private set; }
    public ICollection<Customer> Customers { get; private set; } // Inverse Navigation
    public ICollection<CustomerRequest> CustomerRequests { get; private set; } // Inverse Navigation
}