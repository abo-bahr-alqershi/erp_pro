public class Employee
{
    /// <summary> رقم الموظف </summary>
    public long? EmployeeNo { get; private set; }
    /// <summary> اسم الموظف عربي </summary>
    public string EmployeeArabicName { get; private set; }
    /// <summary> اسم الموظف انجليزي </summary>
    public string? EmployeeEnglishName { get; private set; }
    /// <summary> رقم المدير المباشر </summary>
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
    /// <summary> رقم الفرع </summary>
    public int BranchNo { get; private set; }
    /// <summary> رقم الشركة </summary>
    public short CompanyNo { get; private set; }
    /// <summary> رقم التسلسل الوظيفي </summary>
    public long? HierarchyNo { get; private set; }
    /// <summary> رقم التصنيف </summary>
    public long? ClassNo { get; private set; }
    /// <summary> الجنس </summary>
    public long? Gender { get; private set; }
    /// <summary> رقم الديانة </summary>
    public long? ReligionNo { get; private set; }
    /// <summary> رقم الجنسية </summary>
    public long? NationalityNo { get; private set; }
    /// <summary> الحالة الاجتماعية </summary>
    public long? SocialStatus { get; private set; }
    /// <summary> فصيلة الدم </summary>
    public long? BloodType { get; private set; }
    /// <summary> لغة الموظف </summary>
    public long? EmployeeLanguageNo { get; private set; }
    /// <summary> تاريخ الميلاد ميلادي نصي </summary>
    public string? BirthADDate { get; private set; }
    /// <summary> تاريخ الميلاد هجري نصي </summary>
    public string? BirthHijriDate { get; private set; }
    /// <summary> مكان الميلاد </summary>
    public string? BirthPlace { get; private set; }
    /// <summary> تفاصيل مكان الميلاد </summary>
    public string? BirthPlaceDetail { get; private set; }
    /// <summary> عدد البنات </summary>
    public short? DaughterCount { get; private set; }
    /// <summary> سداد مستحقات التقاعد </summary>
    public bool? RetirementPaymentPaid { get; private set; }
    /// <summary> عدد الأولاد </summary>
    public short? SonCount { get; private set; }
    /// <summary> حالة الأبوين </summary>
    public long? ParentStatus { get; private set; }
    /// <summary> اسم القريب عربي </summary>
    public string? RelativeArabicName { get; private set; }
    /// <summary> اسم القريب انجليزي </summary>
    public string? RelativeEnglishName { get; private set; }
    /// <summary> نوع الهوية </summary>
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
    /// <summary> رقم الدرجة </summary>
    public long? GradeNo { get; private set; }
    /// <summary> رقم الفئة </summary>
    public long? CategoryNo { get; private set; }
    /// <summary> تاريخ القرار </summary>
    public DateTime? DecisionDate { get; private set; }
    /// <summary> جهة إصدار القرار </summary>
    public long? DecisionIssueSide { get; private set; }
    /// <summary> تاريخ التقاعد </summary>
    public DateTime? RetirementDate { get; private set; }
    /// <summary> أيام العمل السابقة </summary>
    public short? OldWorkDay { get; private set; }
    /// <summary> أشهر العمل السابقة </summary>
    public short? OldWorkMonth { get; private set; }
    /// <summary> سنوات العمل السابقة </summary>
    public short? OldWorkYear { get; private set; }
    /// <summary> متقاعد من جهة أخرى </summary>
    public bool? RetirementDifferentSideFlag { get; private set; }
    /// <summary> ربط مع آخر جهة عمل </summary>
    public bool? LinkLastWorkFlag { get; private set; }
    /// <summary> متقاعد </summary>
    public bool? RetirementFlag { get; private set; }
    /// <summary> تاريخ بداية العمل </summary>
    public DateTime? StartWorkDate { get; private set; }
    /// <summary> تاريخ استلام الوظيفة الحالية </summary>
    public DateTime? CurrentJobDate { get; private set; }
    /// <summary> رقم القرار </summary>
    public int? DecisionNo { get; private set; }
    /// <summary> حالة الموظف الحالية </summary>
    public bool? EmployeeCurrentStatus { get; private set; }
    /// <summary> حالة الموظف </summary>
    public bool? EmployeeStatus { get; private set; }
    /// <summary> رقم الوظيفة </summary>
    public long? EmployeeJobNo { get; private set; }
    /// <summary> رقم المستوى </summary>
    public long? LevelNo { get; private set; }
    /// <summary> تاريخ آخر عمل </summary>
    public DateTime? LastWorkDate { get; private set; }
    /// <summary> المؤهل الحالي </summary>
    public long? CurrentQualification { get; private set; }
    /// <summary> بداية العمل بالمؤهل </summary>
    public long? QualificationStartWork { get; private set; }
    /// <summary> رقم التخصص </summary>
    public long? MajorNo { get; private set; }
    /// <summary> نوع التوظيف </summary>
    public long? EmploymentType { get; private set; }
    /// <summary> رقم المجموعة </summary>
    public long? GroupNo { get; private set; }
    /// <summary> آخر تاريخ مباشرة </summary>
    public DateTime? LastStartDate { get; private set; }
    /// <summary> آخر تاريخ تنقل </summary>
    public DateTime? LastMoveDate { get; private set; }
    /// <summary> آخر تقويم </summary>
    public int? LastEvaluation { get; private set; }
    /// <summary> بلد المؤهل </summary>
    public long? QualificationCountry { get; private set; }
    /// <summary> سنة المؤهل </summary>
    public short? QualificationYear { get; private set; }
    /// <summary> نوع القرار </summary>
    public long? DecisionType { get; private set; }
    /// <summary> رقم المشروع </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> أجر اليوم </summary>
    public int? DayWage { get; private set; }
    /// <summary> كود الحساب </summary>
    public string? AccountCode { get; private set; }
    /// <summary> جهة العمل الرئيسية </summary>
    public bool? HomeCompanyFlag { get; private set; }
    /// <summary> أجر الساعة </summary>
    public int? HourWage { get; private set; }
    /// <summary> خاضع للضريبة </summary>
    public bool? TaxFlag { get; private set; }
    /// <summary> حالة الراتب </summary>
    public bool? SalaryStatus { get; private set; }
    /// <summary> أيام العمل بالشهر </summary>
    public decimal? WorkDaysMonth { get; private set; }
    /// <summary> ساعات العمل باليوم </summary>
    public decimal? WorkHoursDay { get; private set; }
    /// <summary> رقم مستوى المدير </summary>
    public long? ManagerLevelNo { get; private set; }
    /// <summary> جهة إصدار المؤهل </summary>
    public string? QualificationIssue { get; private set; }
    /// <summary> نوع الحضور </summary>
    public bool? AttendanceType { get; private set; }
    /// <summary> الحالة الرئيسية </summary>
    public int? StatusMain { get; private set; }
    /// <summary> مسؤول الصيانة </summary>
    public bool? MaintenancePerson { get; private set; }
    /// <summary> نوع احتساب استحقاق التذكرة </summary>
    public bool? TicketDeserveCalcType { get; private set; }
    /// <summary> آخر تاريخ صرف تذكرة </summary>
    public DateTime? LastTicketPaymentDate { get; private set; }
    /// <summary> رقم التأمين الاجتماعي </summary>
    public string? SocialInsuranceNo { get; private set; }
    /// <summary> مركز التكلفة </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> طريقة الدفع </summary>
    public long? PaymentMethod { get; private set; }
    /// <summary> ساعات العمل بالشهر </summary>
    public decimal? WorkHoursMonth { get; private set; }
    /// <summary> ساعات العمل بالسنة </summary>
    public decimal? WorkHoursYear { get; private set; }
    /// <summary> أيام العمل بالسنة </summary>
    public decimal? WorkDaysYear { get; private set; }
    /// <summary> رقم النشاط </summary>
    public string? ActivityNo { get; private set; }
    /// <summary> طريقة صرف الراتب </summary>
    public bool? SalaryPayWay { get; private set; }
    /// <summary> نوع الحالة الاجتماعية </summary>
    public short? MaritalType { get; private set; }
    /// <summary> مصدر الحالة الاجتماعية </summary>
    public bool? MaritalResource { get; private set; }
    /// <summary> كلمة مرور الموظف </summary>
    public string? EmployeePassword { get; private set; }
    /// <summary> استخدام نظام الخدمة الذاتية </summary>
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
    /// <summary> وظيفة التأشيرة </summary>
    public short? EntryVisaJob { get; private set; }
    /// <summary> رقم التأمين </summary>
    public string? InsuranceNo { get; private set; }
    /// <summary> رقم التأمين الطبي </summary>
    public string? MedicalInsuranceNo { get; private set; }
    /// <summary> نوع التأمين الطبي </summary>
    public long? MedicalInsuranceType { get; private set; }
    /// <summary> عدد الأبناء المؤمن عليهم </summary>
    public short? InsuranceSonNo { get; private set; }
    /// <summary> عدد الأولياء المؤمن عليهم </summary>
    public bool? InsuranceParentNo { get; private set; }
    /// <summary> استحقاق التذاكر </summary>
    public bool? TicketsDeserve { get; private set; }
    /// <summary> عدد تذاكر الموظف </summary>
    public short? EmployeeTicketsNo { get; private set; }
    /// <summary> تكلفة التذاكر </summary>
    public long? TicketsCost { get; private set; }
    /// <summary> التذاكر للأيام </summary>
    public short? TicketsForDays { get; private set; }
    /// <summary> نسبة تذاكر الموظف </summary>
    public short? EmployeeTicketsRatio { get; private set; }
    /// <summary> رقم مسار التذكرة </summary>
    public string? TicketPathNo { get; private set; }
    /// <summary> الجنسية </summary>
    public long? Citizenship { get; private set; }
    /// <summary> آخر رقم موظف </summary>
    public long? EmployeeNoLast { get; private set; }
    /// <summary> رقم الموظف على الجهاز </summary>
    public long? EmployeeNoMachine { get; private set; }
    /// <summary> علم عام </summary>
    public short? GeneralFlag { get; private set; }
    /// <summary> النظام المعني باستحقاق الإجازة </summary>
    public long? LawNoDeserveHoliday { get; private set; }
    /// <summary> إيميل القريب </summary>
    public string? RelativeEmail { get; private set; }
    /// <summary> جوال القريب </summary>
    public string? RelativeMobileNo { get; private set; }
    /// <summary> هاتف القريب </summary>
    public string? RelativeTelNo { get; private set; }
    /// <summary> عمر التقاعد </summary>
    public short? RetirementAge { get; private set; }
    /// <summary> سنوات العمل للتقاعد </summary>
    public short? RetirementWorkYears { get; private set; }
    /// <summary> آلية احتساب الراتب </summary>
    public bool? SalaryCalc { get; private set; }
    /// <summary> آخر زيادة راتب </summary>
    public DateTime? LastIncreaseDate { get; private set; }
    /// <summary> آخر علاوة </summary>
    public DateTime? LastAllowanceDate { get; private set; }
    /// <summary> آلية حساب نهاية الخدمة </summary>
    public bool? FngCalc { get; private set; }
    /// <summary> مستورد من اكسل </summary>
    public bool? ImportXLS { get; private set; }
    /// <summary> كود حساب البنك </summary>
    public string? BankAccountCode { get; private set; }
    /// <summary> خط الطول GPS </summary>
    public string? GPSLongitude { get; private set; }
    /// <summary> خط العرض GPS </summary>
    public string? GPSLatitude { get; private set; }
    /// <summary> مدينة الموقع GPS </summary>
    public string? GPSCity { get; private set; }
    /// <summary> ربط كشف الدوام </summary>
    public bool? LinkTimesheet { get; private set; }
    /// <summary> رقم مدير إضافي </summary>
    public long? ManagerNo2 { get; private set; }
    /// <summary> قائمة التقييمات </summary>
    public bool? EvaluationList { get; private set; }
    /// <summary> رقم الدولة </summary>
    public short? CountryNo { get; private set; }
    /// <summary> رقم المدينة </summary>
    public long? CityNo { get; private set; }
    /// <summary> كود المنطقة </summary>
    public long? RegionCode { get; private set; }
    /// <summary> نهاية فترة التجربة </summary>
    public DateTime? ProbationPeriodEndDate { get; private set; }
    /// <summary> هل فترة تجربة؟ </summary>
    public bool? ProbationFlag { get; private set; }
    /// <summary> تأمينات أخرى </summary>
    public int? InsuranceOthers { get; private set; }
    /// <summary> نسبة التأمين للموظف </summary>
    public int? EmployeeInsuranceRatio { get; private set; }
    /// <summary> مبلغ التأمين للموظف </summary>
    public int? EmployeeInsuranceAmount { get; private set; }
    /// <summary> رمز عملة التأمين </summary>
    public string? InsuranceCurrencyCode { get; private set; }
    /// <summary> معطل </summary>
    public bool? Inactive { get; private set; }
    /// <summary> رقم المستخدم الذي عطل </summary>
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
    /// <summary> المستخدم الذي أضاف </summary>
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime AddedDate { get; private set; }
    /// <summary> المستخدم الذي عدل </summary>
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
    /// <summary> رقم الضمان الاجتماعي </summary>
    public long? SocialSecurityNo { get; private set; }
    /// <summary> تاريخ الإعادة للعمل </summary>
    public DateTime? ReinstatementDate { get; private set; }
    /// <summary> رقم المحافظة </summary>
    public long? ProvinceNo { get; private set; }
    /// <summary> نوع فترة العمل </summary>
    public bool? WorkPeriodType { get; private set; }
    /// <summary> نوع عقد الموظف </summary>
    public bool? EmployeeContractType { get; private set; }
    /// <summary> طريقة تتبع الموظف </summary>
    public bool? EmployeeTrackMethod { get; private set; }
    /// <summary> حد التغذية المالية </summary>
    public int? FeedLimitAmount { get; private set; }
    /// <summary> نوع حد التغذية </summary>
    public bool? FeedLimitType { get; private set; }
    /// <summary> نوع نهاية العمل </summary>
    public long? EndWorkType { get; private set; }
    /// <summary> بداية التأمين الطبي </summary>
    public DateTime? EmployeeMedicalStartDate { get; private set; }
    /// <summary> نهاية التأمين الطبي </summary>
    public DateTime? EmployeeMedicalEndDate { get; private set; }
    /// <summary> قيمة مادة النظام الافتراضية </summary>
    public int? DefaultLawArticleValue { get; private set; }
    /// <summary> نوع الحضور </summary>
    public bool? EmployeeAttendanceType { get; private set; }
    /// <summary> نوع جهاز الحضور </summary>
    public bool? AttendanceMobileType { get; private set; }
    /// <summary> نوع التقاط الصورة عبر الجوال </summary>
    public bool? MobileCaptureImageType { get; private set; }
    /// <summary> المنطقة الزمنية للحضور </summary>
    public string? AttendanceTimezone { get; private set; }
    /// <summary> نوع الاتصال بالجوال </summary>
    public bool? MobileConnectType { get; private set; }
    /// <summary> رقم تسلسل جهاز الحضور </summary>
    public string? AttendanceMobileSerial { get; private set; }
    /// <summary> تفعيل الموقع في الحضور </summary>
    public bool? UseAttendanceLocation { get; private set; }
    /// <summary> مزامنة الحضور عبر الجوال </summary>
    public bool? MobileAttendanceSync { get; private set; }
    /// <summary> حساب فيسبوك </summary>
    public string? Facebook { get; private set; }
    /// <summary> حساب تويتر </summary>
    public string? Twitter { get; private set; }
    /// <summary> حساب انستغرام </summary>
    public string? Instagram { get; private set; }
    /// <summary> حساب تيليجرام </summary>
    public string? Telegram { get; private set; }
    /// <summary> حالة احتساب الإجازة الأسبوعية </summary>
    public bool? WeeklyDayoffCalcStatus { get; private set; }
    /// <summary> عدد أيام الشفت المطلوبة للإجازة الأسبوعية </summary>
    public bool? WeeklyDayoffShiftDaysRequired { get; private set; }
    /// <summary> عدد الأيام النظامية للإجازة الأسبوعية </summary>
    public bool? WeeklyDayoffRegularDaysRequired { get; private set; }
    /// <summary> مقارنة أيام الإجازة الأسبوعية بالتساوي </summary>
    public bool? WeeklyDayoffCompareEqual { get; private set; }
    /// <summary> رقم مرجع إجازة أسبوعية </summary>
    public int? WeeklyDayoffRefHolidayNo { get; private set; }
    /// <summary> عدد أيام الأسبوع </summary>
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