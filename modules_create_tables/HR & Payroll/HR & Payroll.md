# 10. الموارد البشرية والرواتب (HR & Payroll)
> **بيانات كاملة لكافة الحقول للجداول: الموظف - الحسابات البنكية - الحضور - العائلة - الصلاحيات - الكفلاء**

---

## Employee (**S_EMP**)
| الاسم الجديد | الاسم القديم | النوع | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|---|---|---|---|---|---|---|
| EmployeeNo | EMP_NO | NUMBER(10,0) | لا | نعم | لا | رقم الموظف |
| EmployeeArabicName | EMP_L_NM | VARCHAR2(60) | نعم | لا | لا | اسم الموظف عربي |
| EmployeeEnglishName | EMP_F_NM | VARCHAR2(60) | لا | نعم | لا | اسم الموظف انجليزي |
| ManagerNo | EMP_NO_MNGR | NUMBER(10,0) | لا | نعم | لا | رقم المدير المباشر |
| EmployeeImage | EMP_IMG | VARCHAR2(100) | لا | نعم | لا | صورة الموظف |
| FirstArabicName | FRST_L_NM | VARCHAR2(50) | نعم | لا | لا | الاسم الأول عربي |
| FirstEnglishName | FRST_F_NM | VARCHAR2(50) | لا | نعم | لا | الاسم الأول انجليزي |
| SecondArabicName | SCND_L_NM | VARCHAR2(50) | لا | نعم | لا | الاسم الثاني عربي |
| SecondEnglishName | SCND_F_NM | VARCHAR2(50) | لا | نعم | لا | الاسم الثاني انجليزي |
| ThirdArabicName | THRD_L_NM | VARCHAR2(50) | لا | نعم | لا | اسم الجد عربي |
| ThirdEnglishName | THRD_F_NM | VARCHAR2(50) | لا | نعم | لا | اسم الجد انجليزي |
| LastArabicName | LST_L_NM | VARCHAR2(50) | لا | نعم | لا | اسم العائلة عربي |
| LastEnglishName | LST_F_NM | VARCHAR2(50) | لا | نعم | لا | اسم العائلة انجليزي |
| CurrencyCode | CUR_CODE | VARCHAR2(7) | لا | نعم | لا | رمز العملة |
| BranchNo | BRN_NO | NUMBER(6,0) | نعم | لا | لا | رقم الفرع |
| CompanyNo | CMP_NO | NUMBER(3,0) | نعم | لا | لا | رقم الشركة |
| HierarchyNo | HRCHY_NO | NUMBER(20,0) | لا | نعم | لا | رقم التسلسل الوظيفي |
| ClassNo | CLASS_NO | NUMBER(10,0) | لا | نعم | لا | رقم التصنيف |
| Gender | GNDR | NUMBER(10,0) | لا | نعم | لا | الجنس |
| ReligionNo | RLGN_NO | NUMBER(10,0) | لا | نعم | لا | رقم الديانة |
| NationalityNo | NTNLTY_NO | NUMBER(10,0) | لا | نعم | لا | رقم الجنسية |
| SocialStatus | SCL_ST | NUMBER(10,0) | لا | نعم | لا | الحالة الاجتماعية |
| BloodType | BLD_TYP | NUMBER(10,0) | لا | نعم | لا | فصيلة الدم |
| EmployeeLanguageNo | EMP_LANG_NO | NUMBER(10,0) | لا | نعم | لا | لغة الموظف |
| BirthADDate | BRTH_AD_DATE | VARCHAR2(10) | لا | نعم | لا | تاريخ الميلاد ميلادي نصي |
| BirthHijriDate | BRTH_HG_DATE | VARCHAR2(10) | لا | نعم | لا | تاريخ الميلاد هجري نصي |
| BirthPlace | BRTH_PLC | VARCHAR2(60) | لا | نعم | لا | مكان الميلاد |
| BirthPlaceDetail | BRTH_PLC_DTL | VARCHAR2(60) | لا | نعم | لا | تفاصيل مكان الميلاد |
| DaughterCount | DGHTR_NO | NUMBER(2,0) | لا | نعم | لا | عدد البنات |
| RetirementPaymentPaid | RTRMNT_PYMNT_PAID | NUMBER(1,0) | لا | نعم | لا | سداد مستحقات التقاعد |
| SonCount | SON_NO | NUMBER(2,0) | لا | نعم | لا | عدد الأولاد |
| ParentStatus | PARNT_ST | NUMBER(10,0) | لا | نعم | لا | حالة الأبوين |
| RelativeArabicName | RLTV_L_NM | VARCHAR2(100) | لا | نعم | لا | اسم القريب عربي |
| RelativeEnglishName | RLTV_F_NM | VARCHAR2(100) | لا | نعم | لا | اسم القريب انجليزي |
| CardType | CRD_TYP | NUMBER(10,0) | لا | نعم | لا | نوع الهوية |
| CardNo | CRD_NO | VARCHAR2(30) | لا | نعم | لا | رقم الهوية |
| NationalNo | NTNL_NO | VARCHAR2(30) | لا | نعم | لا | رقم الجنسية الوطنية |
| PlaceCardIssue | PLC_CRD_ISSUE | VARCHAR2(150) | لا | نعم | لا | مكان إصدار الهوية |
| CardDate | CRD_DATE | DATE | لا | نعم | لا | تاريخ إصدار الهوية |
| CardExpDate | CRD_EXP_DATE | DATE | لا | نعم | لا | تاريخ انتهاء الهوية |
| Notes | NOTES | VARCHAR2(100) | لا | نعم | لا | ملاحظات |
| GradeNo | GRD_NO | NUMBER(10,0) | لا | نعم | لا | رقم الدرجة |
| CategoryNo | CTGRY_NO | NUMBER(10,0) | لا | نعم | لا | رقم الفئة |
| DecisionDate | DCSN_DATE | DATE | لا | نعم | لا | تاريخ القرار |
| DecisionIssueSide | DCSN_ISSU_SD | NUMBER(10,0) | لا | نعم | لا | جهة إصدار القرار |
| RetirementDate | RTRMNT_DATE | DATE | لا | نعم | لا | تاريخ التقاعد |
| OldWorkDay | OLD_WRK_DY | NUMBER(2,0) | لا | نعم | لا | أيام العمل السابقة |
| OldWorkMonth | OLD_WRK_MNTH | NUMBER(2,0) | لا | نعم | لا | أشهر العمل السابقة |
| OldWorkYear | OLD_WRK_YR | NUMBER(2,0) | لا | نعم | لا | سنوات العمل السابقة |
| RetirementDifferentSideFlag | RTRMNT_DFRNT_SD_FLG | NUMBER(1,0) | لا | نعم | لا | متقاعد من جهة أخرى |
| LinkLastWorkFlag | LNK_LST_WRK_FLG | NUMBER(1,0) | لا | نعم | لا | ربط مع آخر جهة عمل |
| RetirementFlag | RTRMNT_FLG | NUMBER(1,0) | لا | نعم | لا | متقاعد |
| StartWorkDate | STRT_WRK_DATE | DATE | لا | نعم | لا | تاريخ بداية العمل |
| CurrentJobDate | CRNT_JOB_DATE | DATE | لا | نعم | لا | تاريخ استلام الوظيفة الحالية |
| DecisionNo | DCSN_NO | NUMBER | لا | نعم | لا | رقم القرار |
| EmployeeCurrentStatus | EMP_CRNT_ST | NUMBER(1,0) | لا | نعم | لا | حالة الموظف الحالية |
| EmployeeStatus | EMP_ST | NUMBER(1,0) | لا | نعم | لا | حالة الموظف |
| EmployeeJobNo | EMP_JOB_NO | NUMBER(10,0) | لا | نعم | لا | رقم الوظيفة |
| LevelNo | LVL_NO | NUMBER(10,0) | لا | نعم | لا | رقم المستوى |
| LastWorkDate | LST_WRK_DATE | DATE | لا | نعم | لا | تاريخ آخر عمل |
| CurrentQualification | CRNT_QLFCTN | NUMBER(10,0) | لا | نعم | لا | المؤهل الحالي |
| QualificationStartWork | QLFCTN_STRT_WRK | NUMBER(10,0) | لا | نعم | لا | بداية العمل بالمؤهل |
| MajorNo | MJR_NO | NUMBER(10,0) | لا | نعم | لا | رقم التخصص |
| EmploymentType | EMPLYMNT_TYP | NUMBER(10,0) | لا | نعم | لا | نوع التوظيف |
| GroupNo | GRP_NO | NUMBER(10,0) | لا | نعم | لا | رقم المجموعة |
| LastStartDate | LST_STRT_DATE | DATE | لا | نعم | لا | آخر تاريخ مباشرة |
| LastMoveDate | LST_MOV_DATE | DATE | لا | نعم | لا | آخر تاريخ تنقل |
| LastEvaluation | EVAL_LST | NUMBER(5,0) | لا | نعم | لا | آخر تقويم |
| QualificationCountry | QLFCTN_CNTRY | NUMBER(10,0) | لا | نعم | لا | بلد المؤهل |
| QualificationYear | QLFCTN_YR | NUMBER(4,0) | لا | نعم | لا | سنة المؤهل |
| DecisionType | DCSN_TYP | NUMBER(10,0) | لا | نعم | لا | نوع القرار |
| ProjectNo | PJ_NO | VARCHAR2(30) | لا | نعم | لا | رقم المشروع |
| DayWage | DY_WAGE | NUMBER | لا | نعم | لا | أجر اليوم |
| AccountCode | AC_CODE | VARCHAR2(30) | لا | نعم | لا | كود الحساب |
| HomeCompanyFlag | HM_FCMP_FLG | NUMBER(1,0) | لا | نعم | لا | جهة العمل الرئيسية |
| HourWage | HR_WAGE | NUMBER | لا | نعم | لا | أجر الساعة |
| TaxFlag | TAX_FLG | NUMBER(1,0) | لا | نعم | لا | خاضع للضريبة |
| SalaryStatus | SLRY_ST | NUMBER(1,0) | لا | نعم | لا | حالة الراتب |
| WorkDaysMonth | WRK_DY_MNTH | NUMBER(4,2) | لا | نعم | لا | أيام العمل بالشهر |
| WorkHoursDay | WRK_HRS_DY | NUMBER(4,2) | لا | نعم | لا | ساعات العمل باليوم |
| ManagerLevelNo | MNGRL_NO | NUMBER(10,0) | لا | نعم | لا | رقم مستوى المدير |
| QualificationIssue | QLFCTN_ISSSUE | VARCHAR2(500) | لا | نعم | لا | جهة إصدار المؤهل |
| AttendanceType | ATTNDNC_TYP | NUMBER(1,0) | لا | نعم | لا | نوع الحضور |
| StatusMain | STST_MAIN | NUMBER | لا | نعم | لا | الحالة الرئيسية |
| MaintenancePerson | MNT_PSRC | NUMBER(1,0) | لا | نعم | لا | مسؤول الصيانة |
| TicketDeserveCalcType | TCKT_DSRV_CLC_TYP | NUMBER(1,0) | لا | نعم | لا | نوع احتساب استحقاق التذكرة |
| LastTicketPaymentDate | LST_TCKT_PYMNT_DATE | DATE | لا | نعم | لا | آخر تاريخ صرف تذكرة |
| SocialInsuranceNo | SCL_INSRNCE_NO | VARCHAR2(100) | لا | نعم | لا | رقم التأمين الاجتماعي |
| CostCenterCode | CC_CODE | VARCHAR2(30) | لا | نعم | لا | مركز التكلفة |
| PaymentMethod | PAY_MTHD | NUMBER(10,0) | لا | نعم | لا | طريقة الدفع |
| WorkHoursMonth | WRK_HRS_MNTH | NUMBER(5,2) | لا | نعم | لا | ساعات العمل بالشهر |
| WorkHoursYear | WRK_HRS_YR | NUMBER(6,2) | لا | نعم | لا | ساعات العمل بالسنة |
| WorkDaysYear | WRK_DY_YR | NUMBER(5,2) | لا | نعم | لا | أيام العمل بالسنة |
| ActivityNo | ACTV_NO | VARCHAR2(30) | لا | نعم | لا | رقم النشاط |
| SalaryPayWay | SLRY_PAY_WAY | NUMBER(1,0) | لا | نعم | لا | طريقة صرف الراتب |
| MaritalType | MRP_TYP | NUMBER(2,0) | لا | نعم | لا | نوع الحالة الاجتماعية |
| MaritalResource | MRP_RSRC | NUMBER(1,0) | لا | نعم | لا | مصدر الحالة الاجتماعية |
| EmployeePassword | EMP_PSWRD | VARCHAR2(20) | لا | نعم | لا | كلمة مرور الموظف |
| UseSelfServiceSystem | USE_SLF_SRVC_SYS | NUMBER(1,0) | لا | نعم | لا | استخدام نظام الخدمة الذاتية |
| Email | E_MAIL | VARCHAR2(60) | لا | نعم | لا | البريد الإلكتروني |
| Website | WEB_SITE | VARCHAR2(60) | لا | نعم | لا | الموقع الإلكتروني |
| FaxNo | FAX_NO | VARCHAR2(30) | لا | نعم | لا | رقم الفاكس |
| TelNo | TEL_NO | VARCHAR2(30) | لا | نعم | لا | رقم الهاتف |
| MobileNo | MOBILE_NO | VARCHAR2(30) | لا | نعم | لا | رقم الجوال |
| POBoxNo | PO_BOX_NO | VARCHAR2(60) | لا | نعم | لا | رقم صندوق البريد |
| Address | ADDRS | VARCHAR2(150) | لا | نعم | لا | العنوان |
| WorkOffice | WRK_OFFC | VARCHAR2(200) | لا | نعم | لا | مكان العمل |
| PortDescription | PORT_DSC | VARCHAR2(200) | لا | نعم | لا | وصف المنفذ |
| EntryVisaNo | ENTRY_VSA_NO | VARCHAR2(100) | لا | نعم | لا | رقم تأشيرة الدخول |
| EntryVisaJob | ENTRY_VSA_JOB | NUMBER(4,0) | لا | نعم | لا | وظيفة التأشيرة |
| InsuranceNo | INSRNCE_NO | VARCHAR2(100) | لا | نعم | لا | رقم التأمين |
| MedicalInsuranceNo | MDCL_INSRNCE_NO | VARCHAR2(100) | لا | نعم | لا | رقم التأمين الطبي |
| MedicalInsuranceType | MDCL_INSRANCE_TYP | NUMBER(10,0) | لا | نعم | لا | نوع التأمين الطبي |
| InsuranceSonNo | INSRNCE_SON_NO | NUMBER(2,0) | لا | نعم | لا | عدد الأبناء المؤمن عليهم |
| InsuranceParentNo | INSRNCE_PARNT_NO | NUMBER(1,0) | لا | نعم | لا | عدد الأولياء المؤمن عليهم |
| TicketsDeserve | TCKTS_DSRVE | NUMBER(1,0) | لا | نعم | لا | استحقاق التذاكر |
| EmployeeTicketsNo | EMP_TCKTS_NO | NUMBER(2,0) | لا | نعم | لا | عدد تذاكر الموظف |
| TicketsCost | TCKTS_COST | NUMBER(10,0) | لا | نعم | لا | تكلفة التذاكر |
| TicketsForDays | TCKTS_FOR_DAYS | NUMBER(4,0) | لا | نعم | لا | التذاكر للأيام |
| EmployeeTicketsRatio | EMP_TCKTS_RTIO | NUMBER(3,0) | لا | نعم | لا | نسبة تذاكر الموظف |
| TicketPathNo | TCKT_PATH_NO | VARCHAR2(200) | لا | نعم | لا | رقم مسار التذكرة |
| Citizenship | CTZNSHP | NUMBER(30,0) | لا | نعم | لا | الجنسية |
| EmployeeNoLast | EMP_NO_LAST | NUMBER(10,0) | لا | نعم | لا | آخر رقم موظف |
| EmployeeNoMachine | EMP_NO_MCHN | NUMBER(10,0) | لا | نعم | لا | رقم الموظف على الجهاز |
| GeneralFlag | GNR_FLG | NUMBER(4,0) | نعم | لا | لا | علم عام |
| LawNoDeserveHoliday | LAW_NO_DSRV_HLDY | NUMBER(10,0) | لا | نعم | لا | النظام المعني باستحقاق الإجازة |
| RelativeEmail | RLTV_E_MAIL | VARCHAR2(60) | لا | نعم | لا | إيميل القريب |
| RelativeMobileNo | RLTV_MOBILE_NO | VARCHAR2(30) | لا | نعم | لا | جوال القريب |
| RelativeTelNo | RLTV_TEL_NO | VARCHAR2(30) | لا | نعم | لا | هاتف القريب |
| RetirementAge | RTRMNT_AGE | NUMBER(3,0) | لا | نعم | لا | عمر التقاعد |
| RetirementWorkYears | RTRMNT_WRK_YR | NUMBER(3,0) | لا | نعم | لا | سنوات العمل للتقاعد |
| SalaryCalc | SLRY_CALC | NUMBER(1,0) | لا | نعم | لا | آلية احتساب الراتب |
| LastIncreaseDate | LST_INCRS_DATE | DATE | لا | نعم | لا | آخر زيادة راتب |
| LastAllowanceDate | LST_ALNC_DATE | DATE | لا | نعم | لا | آخر علاوة |
| FngCalc | FNG_CALC | NUMBER(1,0) | لا | نعم | لا | آلية حساب نهاية الخدمة |
| ImportXLS | IMP_XLS | NUMBER(1,0) | لا | نعم | لا | مستورد من اكسل |
| BankAccountCode | BNK_AC_CODE | VARCHAR2(30) | لا | نعم | لا | كود حساب البنك |
| GPSLongitude | GPS_LNGITD_X | VARCHAR2(100) | لا | نعم | لا | خط الطول GPS |
| GPSLatitude | GPS_LATITD_Y | VARCHAR2(100) | لا | نعم | لا | خط العرض GPS |
| GPSCity | GPS_CITY | VARCHAR2(100) | لا | نعم | لا | مدينة الموقع GPS |
| LinkTimesheet | LNK_TIMESHEET | NUMBER(1,0) | لا | نعم | لا | ربط كشف الدوام |
| ManagerNo2 | EMP_NO_MNGR2 | NUMBER(10,0) | لا | نعم | لا | رقم مدير إضافي |
| EvaluationList | VALT_LST | NUMBER(1,0) | لا | نعم | لا | قائمة التقييمات |
| CountryNo | CNTRY_NO | NUMBER(4,0) | لا | نعم | لا | رقم الدولة |
| CityNo | CITY_NO | NUMBER(10,0) | لا | نعم | لا | رقم المدينة |
| RegionCode | R_CODE | NUMBER(10,0) | لا | نعم | لا | كود المنطقة |
| ProbationPeriodEndDate | PRBTNRY_PRD_END_DATE | DATE | لا | نعم | لا | نهاية فترة التجربة |
| ProbationFlag | PRBTNRY_FLG | NUMBER(1,0) | لا | نعم | لا | هل فترة تجربة؟ |
| InsuranceOthers | INSRNCE_OTHRS | NUMBER | لا | نعم | لا | تأمينات أخرى |
| EmployeeInsuranceRatio | EMP_INSRNCE_RTO | NUMBER | لا | نعم | لا | نسبة التأمين للموظف |
| EmployeeInsuranceAmount | EMP_INSRNCE_AMT | NUMBER | لا | نعم | لا | مبلغ التأمين للموظف |
| InsuranceCurrencyCode | INSRNCE_CUR_CODE | VARCHAR2(7) | لا | نعم | لا | رمز عملة التأمين |
| Inactive | INACTIVE | NUMBER(1,0) | لا | نعم | لا | معطل |
| InactiveUserId | INACTIVE_U_ID | NUMBER(5,0) | لا | نعم | لا | رقم المستخدم الذي عطل |
| InactiveDate | INACTIVE_DATE | DATE | لا | نعم | لا | تاريخ التعطيل |
| InactiveReason | INACTIVE_RES | VARCHAR2(250) | لا | نعم | لا | سبب التعطيل |
| Field1 - Field20 | FIELD1 - FIELD20 | VARCHAR2(500) | لا | نعم | لا | حقول مرنة إضافية |
| AddedUserId | AD_U_ID | NUMBER(5,0) | لا | نعم | لا | المستخدم الذي أضاف |
| AddedDate | AD_DATE | DATE | نعم | لا | لا | تاريخ الإضافة |
| UpdatedUserId | UP_U_ID | NUMBER(5,0) | لا | نعم | لا | المستخدم الذي عدل |
| UpdatedDate | UP_DATE | DATE | لا | نعم | لا | تاريخ آخر تعديل |
| UpdateCount | UP_CNT | NUMBER(10,0) | لا | نعم | لا | عدد مرات التحديث |
| ReportPriority | PR_REP | NUMBER(10,0) | لا | نعم | لا | أولوية التقرير |
| AddedTerminal | AD_TRMNL_NM | VARCHAR2(50) | لا | نعم | لا | اسم الجهاز عند الإضافة |
| UpdatedTerminal | UP_TRMNL_NM | VARCHAR2(50) | لا | نعم | لا | اسم الجهاز عند التعديل |
| SocialSecurityNo | SCL_SCRTY_NO | NUMBER(20,0) | لا | نعم | لا | رقم الضمان الاجتماعي |
| ReinstatementDate | REINSTTMNT_DATE | DATE | لا | نعم | لا | تاريخ الإعادة للعمل |
| ProvinceNo | PROV_NO | NUMBER(10,0) | لا | نعم | لا | رقم المحافظة |
| WorkPeriodType | WRK_PRD_TYP | NUMBER(1,0) | لا | نعم | لا | نوع فترة العمل |
| EmployeeContractType | EMP_CNTRCT_TYP | NUMBER(1,0) | لا | نعم | لا | نوع عقد الموظف |
| EmployeeTrackMethod | EMP_TRCK_MTHD | NUMBER(1,0) | لا | نعم | لا | طريقة تتبع الموظف |
| FeedLimitAmount | FEED_LMT_AMT | NUMBER | لا | نعم | لا | حد التغذية المالية |
| FeedLimitType | FEED_LMT_TYP | NUMBER(1,0) | لا | نعم | لا | نوع حد التغذية |
| EndWorkType | END_WRK_TYP | NUMBER(10,0) | لا | نعم | لا | نوع نهاية العمل |
| EmployeeMedicalStartDate | EMP_MDCL_STRT_DATE | DATE | لا | نعم | لا | بداية التأمين الطبي |
| EmployeeMedicalEndDate | EMP_MDCL_END_DATE | DATE | لا | نعم | لا | نهاية التأمين الطبي |
| DefaultLawArticleValue | DFLT_LAW_ARTCL_VAL | NUMBER | لا | نعم | لا | قيمة مادة النظام الافتراضية |
| EmployeeAttendanceType | EMP_ATTNDNC_TYP | NUMBER(1,0) | لا | نعم | لا | نوع الحضور |
| AttendanceMobileType | ATTNDNC_MOBILE_TYP | NUMBER(1,0) | لا | نعم | لا | نوع جهاز الحضور |
| MobileCaptureImageType | MOBILE_CPTR_IMG_TYP | NUMBER(1,0) | لا | نعم | لا | نوع التقاط الصورة عبر الجوال |
| AttendanceTimezone | ATTNDNC_TIMEZONE | VARCHAR2(20) | لا | نعم | لا | المنطقة الزمنية للحضور |
| MobileConnectType | MOBILE_CNNCT_TYP | NUMBER(1,0) | لا | نعم | لا | نوع الاتصال بالجوال |
| AttendanceMobileSerial | ATTNDNC_MOBILE_SRL | VARCHAR2(60) | لا | نعم | لا | رقم تسلسل جهاز الحضور |
| UseAttendanceLocation | USE_ATTNDNC_LOC | NUMBER(1,0) | لا | نعم | لا | تفعيل الموقع في الحضور |
| MobileAttendanceSync | MOBILE_ATTNDNC_SYNC | NUMBER(1,0) | لا | نعم | لا | مزامنة الحضور عبر الجوال |
| Facebook | FACEBOOK | VARCHAR2(100) | لا | نعم | لا | حساب فيسبوك |
| Twitter | TWITTER | VARCHAR2(100) | لا | نعم | لا | حساب تويتر |
| Instagram | INSTAGRAM | VARCHAR2(100) | لا | نعم | لا | حساب انستغرام |
| Telegram | TELEGRAM | VARCHAR2(100) | لا | نعم | لا | حساب تيليجرام |
| WeeklyDayoffCalcStatus | WEEKLY_DAYOFF_CALC_ST | NUMBER(1,0) | لا | نعم | لا | حالة احتساب الإجازة الأسبوعية |
| WeeklyDayoffShiftDaysRequired | WEEKLY_DAYOFF_SHFT_DAYS_RQRD | NUMBER(1,0) | لا | نعم | لا | عدد أيام الشفت المطلوبة للإجازة الأسبوعية |
| WeeklyDayoffRegularDaysRequired | WEEKLY_DAYOFF_RGLR_DAYS_RQRD | NUMBER(1,0) | لا | نعم | لا | عدد الأيام النظامية للإجازة الأسبوعية |
| WeeklyDayoffCompareEqual | WEEKLY_DAYOFF_COMPAR_EQL | NUMBER(1,0) | لا | نعم | لا | مقارنة أيام الإجازة الأسبوعية بالتساوي |
| WeeklyDayoffRefHolidayNo | WEEKLY_DAYOFF_REF_HLDY_NO | NUMBER(5,0) | لا | نعم | لا | رقم مرجع إجازة أسبوعية |
| WeekDays | WEEK_DAYS | NUMBER(1,0) | لا | نعم | لا | عدد أيام الأسبوع |
| EmployeeMedicalAgeLimit | EMP_MDCL_AGE_LMT | NUMBER | لا | نعم | لا | حد العمر للتأمين الطبي |

---

## EmployeeBank (**S_EMP_BNK**)
| الاسم الجديد | الاسم القديم | النوع | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|---|---|---|---|---|---|---|
| EmployeeNo | EMP_NO | NUMBER(10,0) | لا | نعم | لا | رقم الموظف |
| BankNo | BNK_NO | NUMBER(10,0) | لا | نعم | لا | رقم البنك |
| BankBranchNo | BNK_BRN_NO | NUMBER(10,0) | لا | نعم | لا | رقم فرع البنك |
| BankAccountType | BNK_AC_TYP | NUMBER(2,0) | لا | نعم | لا | نوع الحساب البنكي |
| BankAccountCode | AC_CODE_BNK | VARCHAR2(30) | لا | نعم | لا | كود الحساب البنكي |
| SalaryFlag | SLRY_FLG | NUMBER(1,0) | لا | نعم | لا | علم خاص بالراتب (1=حساب الراتب) |
| Inactive | INACTIVE | NUMBER(1,0) | لا | نعم | لا | معطل |
| InactiveReason | INACTIVE_RES | VARCHAR2(150) | لا | نعم | لا | سبب التعطيل |
| InactiveDate | INACTIVE_DATE | DATE | لا | نعم | لا | تاريخ التعطيل |
| InactiveUserId | INACTIVE_U_ID | NUMBER(10,0) | لا | نعم | لا | رقم المستخدم الذي عطل |
| AddedUserId | AD_U_ID | NUMBER(5,0) | لا | نعم | لا | المستخدم الذي أضاف |
| AddedDate | AD_DATE | DATE | نعم | لا | لا | تاريخ الإضافة |
| UpdatedUserId | UP_U_ID | NUMBER(5,0) | لا | نعم | لا | المستخدم الذي عدل |
| UpdatedDate | UP_DATE | DATE | لا | نعم | لا | تاريخ آخر تعديل |
| UpdateCount | UP_CNT | NUMBER(10,0) | لا | نعم | لا | عدد مرات التحديث |
| ReportPriority | PR_REP | NUMBER(10,0) | لا | نعم | لا | أولوية التقرير |

---

## EmployeeAttendanceLocation (**GNR_ATTNDNC_LOC**)
| الاسم الجديد | الاسم القديم | النوع | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|---|---|---|---|---|---|---|
| LocationNo | LOC_NO | NUMBER(10,0) | لا | نعم | لا | رقم الموقع |
| LocationArabicName | LOC_L_NM | VARCHAR2(100) | نعم | لا | لا | اسم الموقع عربي |
| LocationEnglishName | LOC_F_NM | VARCHAR2(100) | لا | نعم | لا | اسم الموقع انجليزي |
| ConnectionType | CONN_TYP | NUMBER(2,0) | نعم | لا | لا | نوع الاتصال (شبكة، GPS...) |
| GPSLongitude | GPS_LNGITD_X | VARCHAR2(100) | لا | نعم | لا | خط الطول GPS |
| GPSLatitude | GPS_LATITD_Y | VARCHAR2(100) | لا | نعم | لا | خط العرض GPS |
| AllowDistanceGPS | ALLW_DSTNC_GPS | NUMBER(5,0) | لا | نعم | لا | المسافة المسموحة GPS |
| LocationNetworkIP | LOC_NETWRK_IP | VARCHAR2(500) | لا | نعم | لا | عناوين الشبكة المسموح بها |
| Inactive | INACTIVE | NUMBER(1,0) | نعم | لا | لا | معطل |
| InactiveReason | INACTIVE_RES | VARCHAR2(150) | لا | نعم | لا | سبب التعطيل |
| InactiveUserId | INACTIVE_U_ID | NUMBER(10,0) | لا | نعم | لا | رقم المستخدم الذي عطل |
| InactiveDate | INACTIVE_DATE | DATE | لا | نعم | لا | تاريخ التعطيل |
| AddedUserId | AD_U_ID | NUMBER(5,0) | نعم | لا | لا | المستخدم الذي أضاف |
| AddedDate | AD_DATE | DATE | نعم | لا | لا | تاريخ الإضافة |
| AddedTerminal | AD_TRMNL_NM | VARCHAR2(50) | لا | نعم | لا | اسم الجهاز عند الإضافة |
| UpdatedUserId | UP_U_ID | NUMBER(5,0) | لا | نعم | لا | المستخدم الذي عدل |
| UpdateCount | UP_CNT | NUMBER(10,0) | لا | نعم | لا | عدد مرات التحديث |
| UpdatedDate | UP_DATE | DATE | لا | نعم | لا | تاريخ آخر تعديل |
| UpdatedTerminal | UP_TRMNL_NM | VARCHAR2(50) | لا | نعم | لا | اسم الجهاز عند التعديل |
| ReportPriority | PR_REP | NUMBER(10,0) | لا | نعم | لا | أولوية التقرير |

---

## EmployeeFamily (**S_EMP_FMLY**)
| الاسم الجديد | الاسم القديم | النوع | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|---|---|---|---|---|---|---|
| PersonNo | PRSN_NO | NUMBER(10,0) | لا | نعم | لا | رقم الشخص |
| EmployeeNo | EMP_NO | NUMBER(10,0) | لا | نعم | لا | رقم الموظف |
| PersonArabicName | PRSN_L_NM | VARCHAR2(60) | نعم | لا | لا | اسم الشخص عربي |
| PersonEnglishName | PRSN_F_NM | VARCHAR2(60) | لا | نعم | لا | اسم الشخص انجليزي |
| PersonParentArabicName | PRSN_PRNT_L_NM | VARCHAR2(60) | لا | نعم | لا | اسم والد الشخص عربي |
| PersonParentEnglishName | PRSN_PRNT_F_NM | VARCHAR2(60) | لا | نعم | لا | اسم والد الشخص انجليزي |
| PersonGrandArabicName | PRSN_GRND_L_NM | VARCHAR2(60) | لا | نعم | لا | اسم الجد عربي |
| PersonGrandEnglishName | PRSN_GRND_F_NM | VARCHAR2(60) | لا | نعم | لا | اسم الجد انجليزي |
| PersonFamilyArabicName | PRSN_FMIL_L_NM | VARCHAR2(60) | لا | نعم | لا | اسم العائلة عربي |
| PersonFamilyEnglishName | PRSN_FMIL_F_NM | VARCHAR2(60) | لا | نعم | لا | اسم العائلة انجليزي |
| NationalityNo | NTNLTY_NO | NUMBER(10,0) | لا | نعم | لا | رقم الجنسية |
| ReligionNo | RLGN_NO | NUMBER(10,0) | لا | نعم | لا | رقم الديانة |
| BirthPlace | BRTH_PLC | VARCHAR2(60) | لا | نعم | لا | مكان الميلاد |
| BirthDate | BRTH_DATE | DATE | لا | نعم | لا | تاريخ الميلاد |
| RelationshipNo | RLTNSHP_NO | NUMBER(1,0) | لا | نعم | لا | رقم القرابة |
| Gender | GNDR | NUMBER(1,0) | لا | نعم | لا | الجنس |
| MedicalFlag | MDCL_FLG | NUMBER(1,0) | لا | نعم | لا | علم التأمين الطبي |
| AddedUserId | AD_U_ID | NUMBER(5,0) | لا | نعم | لا | المستخدم الذي أضاف |
| AddedDate | AD_DATE | DATE | نعم | لا | لا | تاريخ الإضافة |
| UpdatedUserId | UP_U_ID | NUMBER(5,0) | لا | نعم | لا | المستخدم الذي عدل |
| UpdatedDate | UP_DATE | DATE | لا | نعم | لا | تاريخ آخر تعديل |
| UpdateCount | UP_CNT | NUMBER(10,0) | لا | نعم | لا | عدد مرات التحديث |
| ReportPriority | PR_REP | NUMBER(10,0) | لا | نعم | لا | أولوية التقرير |
| PersonMedicalCategory | PRSN_MDCL_CTGRY | NUMBER(4,0) | لا | نعم | لا | تصنيف الحالة الطبية |
| PersonMedicalStartDate | PRSN_MDCL_STRT_DATE | DATE | لا | نعم | لا | بداية التأمين الطبي |
| PersonMedicalEndDate | PRSN_MDCL_END_DATE | DATE | لا | نعم | لا | نهاية التأمين الطبي |
| PersonMedicalAmount | PRSN_MDCL_AMT | NUMBER | لا | نعم | لا | مبلغ التأمين |
| PersonMedicalMembership | PRSN_MDCL_MEMBRSHP | VARCHAR2(50) | لا | نعم | لا | رقم عضوية التأمين |
| EmployeeMedicalRatio | EMP_MDCL_RTO | NUMBER | لا | نعم | لا | نسبة التأمين |
| BloodType | BLD_TYP | NUMBER(10,0) | لا | نعم | لا | فصيلة الدم |
| PersonImage | PRSN_IMG | VARCHAR2(100) | لا | نعم | لا | صورة الشخص |
| PersonMedicalDeservedAge | PRSN_MDCL_DSRVD_AGE | NUMBER | لا | نعم | لا | العمر المستحق للتأمين |

---

## EmployeePrivilege (**S_EMP_PRV**)
| الاسم الجديد | الاسم القديم | النوع | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|---|---|---|---|---|---|---|
| UserId | U_ID | NUMBER(5,0) | نعم | لا | لا | رقم المستخدم |
| EmployeePrivilegeType | EMP_PRV_TYP | NUMBER(1,0) | نعم | لا | لا | نوع الصلاحية |
| EmployeeNoHierarchyNo | EMPNO_HRCHYNO | NUMBER(10,0) | نعم | لا | لا | رقم الموظف أو التسلسل |
| AddFlag | ADD_FLAG | NUMBER(1,0) | لا | نعم | لا | صلاحية إضافة |
| ViewFlag | VIEW_FLAG | NUMBER(1,0) | لا | نعم | لا | صلاحية عرض |
| AddedUserId | AD_U_ID | NUMBER(5,0) | لا | نعم | لا | المستخدم الذي أضاف |
| AddedDate | AD_DATE | DATE | نعم | لا | لا | تاريخ الإضافة |
| UpdatedUserId | UP_U_ID | NUMBER(5,0) | لا | نعم | لا | المستخدم الذي عدل |
| UpdatedDate | UP_DATE | DATE | لا | نعم | لا | تاريخ آخر تعديل |
| AddedTerminal | AD_TRMNL_NM | VARCHAR2(50) | لا | نعم | لا | اسم الجهاز عند الإضافة |
| UpdatedTerminal | UP_TRMNL_NM | VARCHAR2(50) | لا | نعم | لا | اسم الجهاز عند التعديل |

---

## EmployeeGuarantor (**S_EMP_GRNTR**)
| الاسم الجديد | الاسم القديم | النوع | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|---|---|---|---|---|---|---|
| EmployeeNo | EMP_NO | NUMBER(10,0) | لا | نعم | لا | رقم الموظف |
| GuarantorNo | GRNTR_NO | NUMBER(10,0) | لا | نعم | لا | رقم الكفيل / الضامن |
| Inactive | INACTIVE | NUMBER(1,0) | لا | نعم | لا | معطل |
| InactiveReason | INACTIVE_RES | VARCHAR2(150) | لا | نعم | لا | سبب التعطيل |
| InactiveDate | INACTIVE_DATE | DATE | لا | نعم | لا | تاريخ التعطيل |
| InactiveUserId | INACTIVE_U_ID | NUMBER(10,0) | لا | نعم | لا | رقم المستخدم الذي عطل |
| AddedUserId | AD_U_ID | NUMBER(5,0) | لا | نعم | لا | المستخدم الذي أضاف |
| AddedDate | AD_DATE | DATE | نعم | لا | لا | تاريخ الإضافة |
| UpdatedUserId | UP_U_ID | NUMBER(5,0) | لا | نعم | لا | المستخدم الذي عدل |
| UpdatedDate | UP_DATE | DATE | لا | نعم | لا | تاريخ آخر تعديل |
| UpdateCount | UP_CNT | NUMBER(10,0) | لا | نعم | لا | عدد مرات التحديث |
| ReportPriority | PR_REP | NUMBER(10,0) | لا | نعم | لا | أولوية التقرير |
| SalaryFlag | SLRY_FLG | NUMBER(1,0) | لا | نعم | لا | علم خاص بالراتب |

---


