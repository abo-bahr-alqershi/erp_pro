public class Employee
{
    public long? EmployeeNo { get; private set; }
    /// <summary> اسم الموظف عربي </summary>
    public string EmployeeArabicName { get; private set; }
    /// <summary> اسم الموظف انجليزي </summary>
    public string? EmployeeEnglishName { get; private set; }
    public long? ManagerNo { get; private set; }
    /// <summary> صورة الموظف </summary>
    public string? EmployeeImage { get; private set; }
    /// <summary> الاسم الأول عربي </summary>
    public string FirstArabicName { get; private set; }
    /// <summary> الاسم الأول انجليزي </summary>
    public string? FirstEnglishName { get; private set; }
    /// <summary> الاسم الثاني عربي </summary>
    public string? SecondArabicName { get; private set; }
    /// <summary> الاسم الثاني انجليزي </summary>
    public string? SecondEnglishName { get; private set; }
    /// <summary> اسم الجد عربي </summary>
    public string? ThirdArabicName { get; private set; }
    /// <summary> اسم الجد انجليزي </summary>
    public string? ThirdEnglishName { get; private set; }
    /// <summary> اسم العائلة عربي </summary>
    public string? LastArabicName { get; private set; }
    /// <summary> اسم العائلة انجليزي </summary>
    public string? LastEnglishName { get; private set; }
    /// <summary> رمز العملة </summary>
    public string? CurrencyCode { get; private set; }
    public int BranchNo { get; private set; }
    public short CompanyNo { get; private set; }
    public long? HierarchyNo { get; private set; }
    public long? ClassNo { get; private set; }
    public long? Gender { get; private set; }
    public long? ReligionNo { get; private set; }
    public long? NationalityNo { get; private set; }
    public long? SocialStatus { get; private set; }
    public long? BloodType { get; private set; }
    public long? EmployeeLanguageNo { get; private set; }
    /// <summary> تاريخ الميلاد ميلادي نصي </summary>
    public string? BirthADDate { get; private set; }
    /// <summary> تاريخ الميلاد هجري نصي </summary>
    public string? BirthHijriDate { get; private set; }
    /// <summary> مكان الميلاد </summary>
    public string? BirthPlace { get; private set; }
    /// <summary> تفاصيل مكان الميلاد </summary>
    public string? BirthPlaceDetail { get; private set; }
    public short? DaughterCount { get; private set; }
    public bool? RetirementPaymentPaid { get; private set; }
    public short? SonCount { get; private set; }
    public long? ParentStatus { get; private set; }
    /// <summary> اسم القريب عربي </summary>
    public string? RelativeArabicName { get; private set; }
    /// <summary> اسم القريب انجليزي </summary>
    public string? RelativeEnglishName { get; private set; }
    public long? CardType { get; private set; }
    /// <summary> رقم الهوية </summary>
    public string? CardNo { get; private set; }
    /// <summary> رقم الجنسية الوطنية </summary>
    public string? NationalNo { get; private set; }
    /// <summary> مكان إصدار الهوية </summary>
    public string? PlaceCardIssue { get; private set; }
    /// <summary> تاريخ إصدار الهوية </summary>
    public DateTime? CardDate { get; private set; }
    /// <summary> تاريخ انتهاء الهوية </summary>
    public DateTime? CardExpDate { get; private set; }
    /// <summary> ملاحظات </summary>
    public string? Notes { get; private set; }
    public long? GradeNo { get; private set; }
    public long? CategoryNo { get; private set; }
    /// <summary> تاريخ القرار </summary>
    public DateTime? DecisionDate { get; private set; }
    public long? DecisionIssueSide { get; private set; }
    /// <summary> تاريخ التقاعد </summary>
    public DateTime? RetirementDate { get; private set; }
    public short? OldWorkDay { get; private set; }
    public short? OldWorkMonth { get; private set; }
    public short? OldWorkYear { get; private set; }
    public bool? RetirementDifferentSideFlag { get; private set; }
    public bool? LinkLastWorkFlag { get; private set; }
    public bool? RetirementFlag { get; private set; }
    /// <summary> تاريخ بداية العمل </summary>
    public DateTime? StartWorkDate { get; private set; }
    /// <summary> تاريخ استلام الوظيفة الحالية </summary>
    public DateTime? CurrentJobDate { get; private set; }
    /// <summary> رقم القرار </summary>
    public int? DecisionNo { get; private set; }
    public bool? EmployeeCurrentStatus { get; private set; }
    public bool? EmployeeStatus { get; private set; }
    public long? EmployeeJobNo { get; private set; }
    public long? LevelNo { get; private set; }
    /// <summary> تاريخ آخر عمل </summary>
    public DateTime? LastWorkDate { get; private set; }
    public long? CurrentQualification { get; private set; }
    public long? QualificationStartWork { get; private set; }
    public long? MajorNo { get; private set; }
    public long? EmploymentType { get; private set; }
    public long? GroupNo { get; private set; }
    /// <summary> آخر تاريخ مباشرة </summary>
    public DateTime? LastStartDate { get; private set; }
    /// <summary> آخر تاريخ تنقل </summary>
    public DateTime? LastMoveDate { get; private set; }
    public int? LastEvaluation { get; private set; }
    public long? QualificationCountry { get; private set; }
    public short? QualificationYear { get; private set; }
    public long? DecisionType { get; private set; }
    /// <summary> رقم المشروع </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> أجر اليوم </summary>
    public int? DayWage { get; private set; }
    /// <summary> كود الحساب </summary>
    public string? AccountCode { get; private set; }
    public bool? HomeCompanyFlag { get; private set; }
    /// <summary> أجر الساعة </summary>
    public int? HourWage { get; private set; }
    public bool? TaxFlag { get; private set; }
    public bool? SalaryStatus { get; private set; }
    public decimal? WorkDaysMonth { get; private set; }
    public decimal? WorkHoursDay { get; private set; }
    public long? ManagerLevelNo { get; private set; }
    /// <summary> جهة إصدار المؤهل </summary>
    public string? QualificationIssue { get; private set; }
    public bool? AttendanceType { get; private set; }
    /// <summary> الحالة الرئيسية </summary>
    public int? StatusMain { get; private set; }
    public bool? MaintenancePerson { get; private set; }
    public bool? TicketDeserveCalcType { get; private set; }
    /// <summary> آخر تاريخ صرف تذكرة </summary>
    public DateTime? LastTicketPaymentDate { get; private set; }
    /// <summary> رقم التأمين الاجتماعي </summary>
    public string? SocialInsuranceNo { get; private set; }
    /// <summary> مركز التكلفة </summary>
    public string? CostCenterCode { get; private set; }
    public long? PaymentMethod { get; private set; }
    public decimal? WorkHoursMonth { get; private set; }
    public decimal? WorkHoursYear { get; private set; }
    public decimal? WorkDaysYear { get; private set; }
    /// <summary> رقم النشاط </summary>
    public string? ActivityNo { get; private set; }
    public bool? SalaryPayWay { get; private set; }
    public short? MaritalType { get; private set; }
    public bool? MaritalResource { get; private set; }
    /// <summary> كلمة مرور الموظف </summary>
    public string? EmployeePassword { get; private set; }
    public bool? UseSelfServiceSystem { get; private set; }
    /// <summary> البريد الإلكتروني </summary>
    public string? Email { get; private set; }
    /// <summary> الموقع الإلكتروني </summary>
    public string? Website { get; private set; }
    /// <summary> رقم الفاكس </summary>
    public string? FaxNo { get; private set; }
    /// <summary> رقم الهاتف </summary>
    public string? TelNo { get; private set; }
    /// <summary> رقم الجوال </summary>
    public string? MobileNo { get; private set; }
    /// <summary> رقم صندوق البريد </summary>
    public string? POBoxNo { get; private set; }
    /// <summary> العنوان </summary>
    public string? Address { get; private set; }
    /// <summary> مكان العمل </summary>
    public string? WorkOffice { get; private set; }
    /// <summary> وصف المنفذ </summary>
    public string? PortDescription { get; private set; }
    /// <summary> رقم تأشيرة الدخول </summary>
    public string? EntryVisaNo { get; private set; }
    public short? EntryVisaJob { get; private set; }
    /// <summary> رقم التأمين </summary>
    public string? InsuranceNo { get; private set; }
    /// <summary> رقم التأمين الطبي </summary>
    public string? MedicalInsuranceNo { get; private set; }
    public long? MedicalInsuranceType { get; private set; }
    public short? InsuranceSonNo { get; private set; }
    public bool? InsuranceParentNo { get; private set; }
    public bool? TicketsDeserve { get; private set; }
    public short? EmployeeTicketsNo { get; private set; }
    public long? TicketsCost { get; private set; }
    public short? TicketsForDays { get; private set; }
    public short? EmployeeTicketsRatio { get; private set; }
    /// <summary> رقم مسار التذكرة </summary>
    public string? TicketPathNo { get; private set; }
    public long? Citizenship { get; private set; }
    public long? EmployeeNoLast { get; private set; }
    public long? EmployeeNoMachine { get; private set; }
    public short? GeneralFlag { get; private set; }
    public long? LawNoDeserveHoliday { get; private set; }
    /// <summary> إيميل القريب </summary>
    public string? RelativeEmail { get; private set; }
    /// <summary> جوال القريب </summary>
    public string? RelativeMobileNo { get; private set; }
    /// <summary> هاتف القريب </summary>
    public string? RelativeTelNo { get; private set; }
    public short? RetirementAge { get; private set; }
    public short? RetirementWorkYears { get; private set; }
    public bool? SalaryCalc { get; private set; }
    /// <summary> آخر زيادة راتب </summary>
    public DateTime? LastIncreaseDate { get; private set; }
    /// <summary> آخر علاوة </summary>
    public DateTime? LastAllowanceDate { get; private set; }
    public bool? FngCalc { get; private set; }
    public bool? ImportXLS { get; private set; }
    /// <summary> كود حساب البنك </summary>
    public string? BankAccountCode { get; private set; }
    /// <summary> خط الطول GPS </summary>
    public string? GPSLongitude { get; private set; }
    /// <summary> خط العرض GPS </summary>
    public string? GPSLatitude { get; private set; }
    /// <summary> مدينة الموقع GPS </summary>
    public string? GPSCity { get; private set; }
    public bool? LinkTimesheet { get; private set; }
    public long? ManagerNo2 { get; private set; }
    public bool? EvaluationList { get; private set; }
    public short? CountryNo { get; private set; }
    public long? CityNo { get; private set; }
    public long? RegionCode { get; private set; }
    /// <summary> نهاية فترة التجربة </summary>
    public DateTime? ProbationPeriodEndDate { get; private set; }
    public bool? ProbationFlag { get; private set; }
    /// <summary> تأمينات أخرى </summary>
    public int? InsuranceOthers { get; private set; }
    /// <summary> نسبة التأمين للموظف </summary>
    public int? EmployeeInsuranceRatio { get; private set; }
    /// <summary> مبلغ التأمين للموظف </summary>
    public int? EmployeeInsuranceAmount { get; private set; }
    /// <summary> رمز عملة التأمين </summary>
    public string? InsuranceCurrencyCode { get; private set; }
    public bool? Inactive { get; private set; }
    public int? InactiveUserId { get; private set; }
    /// <summary> تاريخ التعطيل </summary>
    public DateTime? InactiveDate { get; private set; }
    /// <summary> سبب التعطيل </summary>
    public string? InactiveReason { get; private set; }
    public string? Field1 { get; private set; }
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
    public string? Field2 { get; private set; }
    public string? Field20 { get; private set; }
    public string? Field3 { get; private set; }
    public string? Field4 { get; private set; }
    public string? Field5 { get; private set; }
    public string? Field6 { get; private set; }
    public string? Field7 { get; private set; }
    public string? Field8 { get; private set; }
    public string? Field9 { get; private set; }
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime AddedDate { get; private set; }
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public long? UpdateCount { get; private set; }
    public long? ReportPriority { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public long? SocialSecurityNo { get; private set; }
    /// <summary> تاريخ الإعادة للعمل </summary>
    public DateTime? ReinstatementDate { get; private set; }
    public long? ProvinceNo { get; private set; }
    public bool? WorkPeriodType { get; private set; }
    public bool? EmployeeContractType { get; private set; }
    public bool? EmployeeTrackMethod { get; private set; }
    /// <summary> حد التغذية المالية </summary>
    public int? FeedLimitAmount { get; private set; }
    public bool? FeedLimitType { get; private set; }
    public long? EndWorkType { get; private set; }
    /// <summary> بداية التأمين الطبي </summary>
    public DateTime? EmployeeMedicalStartDate { get; private set; }
    /// <summary> نهاية التأمين الطبي </summary>
    public DateTime? EmployeeMedicalEndDate { get; private set; }
    /// <summary> قيمة مادة النظام الافتراضية </summary>
    public int? DefaultLawArticleValue { get; private set; }
    public bool? EmployeeAttendanceType { get; private set; }
    public bool? AttendanceMobileType { get; private set; }
    public bool? MobileCaptureImageType { get; private set; }
    /// <summary> المنطقة الزمنية للحضور </summary>
    public string? AttendanceTimezone { get; private set; }
    public bool? MobileConnectType { get; private set; }
    /// <summary> رقم تسلسل جهاز الحضور </summary>
    public string? AttendanceMobileSerial { get; private set; }
    public bool? UseAttendanceLocation { get; private set; }
    public bool? MobileAttendanceSync { get; private set; }
    /// <summary> حساب فيسبوك </summary>
    public string? Facebook { get; private set; }
    /// <summary> حساب تويتر </summary>
    public string? Twitter { get; private set; }
    /// <summary> حساب انستغرام </summary>
    public string? Instagram { get; private set; }
    /// <summary> حساب تيليجرام </summary>
    public string? Telegram { get; private set; }
    public bool? WeeklyDayoffCalcStatus { get; private set; }
    public bool? WeeklyDayoffShiftDaysRequired { get; private set; }
    public bool? WeeklyDayoffRegularDaysRequired { get; private set; }
    public bool? WeeklyDayoffCompareEqual { get; private set; }
    public int? WeeklyDayoffRefHolidayNo { get; private set; }
    public bool? WeekDays { get; private set; }
    /// <summary> حد العمر للتأمين الطبي </summary>
    public int? EmployeeMedicalAgeLimit { get; private set; }
    public Employee Employee { get; private set; } // Navigation
    public Employee Employee { get; private set; } // Navigation
    public CurrencyExchangeRate CurrencyExchangeRate { get; private set; } // Navigation
    public Project Project { get; private set; } // Navigation
    public ICollection<Employee> Employees { get; private set; } // Inverse Navigation
    public ICollection<EmployeeBank> EmployeeBanks { get; private set; } // Inverse Navigation
    public ICollection<EmployeeFamily> EmployeeFamilies { get; private set; } // Inverse Navigation
    public ICollection<EmployeeGuarantor> EmployeeGuarantors { get; private set; } // Inverse Navigation
}