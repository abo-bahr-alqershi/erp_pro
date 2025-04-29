public class Customer
{
    /// <summary> كود العميل الرئيسي </summary>
    public string? CustomerCode { get; private set; }
    /// <summary> اسم العميل بالعربية </summary>
    public string CustomerArabicName { get; private set; }
    /// <summary> اسم العميل بالإنجليزية </summary>
    public string? CustomerEnglishName { get; private set; }
    /// <summary> كود الحساب المحاسبي للعميل </summary>
    public string CustomerAccountCode { get; private set; }
    /// <summary> رقم تسلسلي داخلي </summary>
    public long? CustomerSequence { get; private set; }
    /// <summary> كود مجموعة العميل </summary>
    public long? CustomerGroupCode { get; private set; }
    /// <summary> الرقم الضريبي للعميل </summary>
    public string? CustomerTaxCode { get; private set; }
    /// <summary> رقم صندوق بريد العميل </summary>
    public string? CustomerBoxCode { get; private set; }
    /// <summary> عنوان العميل </summary>
    public string? CustomerAddress { get; private set; }
    /// <summary> رقم الدولة </summary>
    public short? CountryNo { get; private set; }
    /// <summary> رقم المحافظة </summary>
    public long? ProvinceNo { get; private set; }
    /// <summary> رقم المدينة </summary>
    public long? CityNo { get; private set; }
    /// <summary> كود المنطقة </summary>
    public long? RegionCode { get; private set; }
    /// <summary> كود المندوب </summary>
    public string? SalesRepCode { get; private set; }
    /// <summary> رقم مسار التحصيل/التوزيع </summary>
    public long? RouteNo { get; private set; }
    /// <summary> ترتيب العميل ضمن المسار </summary>
    public long? SortInRoute { get; private set; }
    /// <summary> إحداثيات العميل </summary>
    public string? GPS { get; private set; }
    /// <summary> رقم المحصل </summary>
    public long? CollectorNo { get; private set; }
    /// <summary> مركز التكلفة للعميل </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> فترة السماح الائتماني بالأيام </summary>
    public short? CreditPeriod { get; private set; }
    /// <summary> هاتف العميل </summary>
    public string? CustomerPhone { get; private set; }
    /// <summary> فاكس العميل </summary>
    public string? CustomerFax { get; private set; }
    /// <summary> صندوق بريد العميل </summary>
    public string? CustomerBox { get; private set; }
    /// <summary> اسم شخص التواصل </summary>
    public string? CustomerPerson { get; private set; }
    /// <summary> بريد إلكتروني للعميل </summary>
    public string? CustomerEmail { get; private set; }
    /// <summary> موقع إلكتروني للعميل </summary>
    public string? CustomerWebsite { get; private set; }
    /// <summary> تصنيف العميل </summary>
    public short? CustomerClass { get; private set; }
    /// <summary> درجة العميل </summary>
    public short? CustomerDegree { get; private set; }
    /// <summary> جوال العميل </summary>
    public string? CustomerMobile { get; private set; }
    /// <summary> تاريخ بدء التعامل مع العميل </summary>
    public DateTime? CustomerSince { get; private set; }
    /// <summary> معطل (1=نعم) </summary>
    public bool? Inactive { get; private set; }
    /// <summary> سبب التعطيل </summary>
    public string? InactiveReason { get; private set; }
    /// <summary> تاريخ تعطيل العميل </summary>
    public DateTime? InactiveDate { get; private set; }
    /// <summary> كود المورد للعميل (في حال كان عميل/مورد) </summary>
    public string? CustomerVendor { get; private set; }
    /// <summary> ملاحظات عامة </summary>
    public string? CustomerNote { get; private set; }
    /// <summary> نسبة الخصم الافتراضية </summary>
    public int? DiscountPercent { get; private set; }
    /// <summary> آخر تاريخ تأكيد للعميل </summary>
    public DateTime? ConfirmLastDate { get; private set; }
    /// <summary> متصل بنظام خارجي (1=نعم) </summary>
    public bool? ConnectRemoteSystem { get; private set; }
    /// <summary> معطل عن المبيعات (1=نعم) </summary>
    public bool? InactiveSales { get; private set; }
    /// <summary> اسم الضامن </summary>
    public string? GuarantorName { get; private set; }
    /// <summary> عنوان الضامن </summary>
    public string? GuarantorAddress { get; private set; }
    /// <summary> تاريخ بدء الضمان </summary>
    public DateTime? GuarantorStartDate { get; private set; }
    /// <summary> تاريخ انتهاء الضمان </summary>
    public DateTime? GuarantorExpireDate { get; private set; }
    /// <summary> نوع الضامن </summary>
    public bool? GuarantorType { get; private set; }
    /// <summary> مبلغ الضمان </summary>
    public int? GuarantorAmount { get; private set; }
    /// <summary> حالة الضمان </summary>
    public bool? GuarantorStatus { get; private set; }
    /// <summary> المركز المالي للضامن </summary>
    public string? GuarantorFinCenter { get; private set; }
    /// <summary> عمل الضامن </summary>
    public string? GuarantorWork { get; private set; }
    /// <summary> تاريخ مستند الضمان </summary>
    public DateTime? GuarantorDocDate { get; private set; }
    /// <summary> محكمة التسجيل للضامن </summary>
    public string? GuarantorRegCourt { get; private set; }
    /// <summary> سجل تجاري للضامن </summary>
    public string? GuarantorRegTrade { get; private set; }
    /// <summary> ملف تجاري للضامن </summary>
    public string? GuarantorFileTrade { get; private set; }
    /// <summary> هاتف الضامن </summary>
    public string? GuarantorTel { get; private set; }
    /// <summary> فاكس الضامن </summary>
    public string? GuarantorFax { get; private set; }
    /// <summary> ضمن القائمة السوداء (1=نعم) </summary>
    public bool? BlackList { get; private set; }
    /// <summary> سبب الإدراج بالقائمة السوداء </summary>
    public string? BlackListReason { get; private set; }
    /// <summary> العميل مندوب مبيعات (1=نعم) </summary>
    public bool? CustomerSalesMan { get; private set; }
    /// <summary> رقم الرخصة </summary>
    public string? LicenseNo { get; private set; }
    /// <summary> مالك الرخصة </summary>
    public string? LicenseOwner { get; private set; }
    /// <summary> المسؤول عن العميل </summary>
    public string? ResponsiblePerson { get; private set; }
    /// <summary> صاحب التفويض بالتوقيع </summary>
    public string? SignAuthPerson { get; private set; }
    /// <summary> رقم تسلسلي داخلي </summary>
    public int? SerialNo { get; private set; }
    /// <summary> رقم سائق العميل </summary>
    public long? DriverNo { get; private set; }
    /// <summary> رقم حساب عمليات العميل </summary>
    public long? AccountOpNo { get; private set; }
    /// <summary> تم الاستيراد من اكسل (1=نعم) </summary>
    public bool? ImportFromXLS { get; private set; }
    /// <summary> كود العميل الأب (للهيكلية) </summary>
    public string? CustomerParent { get; private set; }
    /// <summary> ربط بفرع معين </summary>
    public int? ConnectBranchNo { get; private set; }
    /// <summary> إرسال رسائل تلقائيًا (1=نعم) </summary>
    public bool? SendMessage { get; private set; }
    /// <summary> إحداثي العرض </summary>
    public string? Latitude { get; private set; }
    /// <summary> إحداثي الطول </summary>
    public string? Longitude { get; private set; }
    /// <summary> لون العميل على الخريطة </summary>
    public string? GPSColor { get; private set; }
    /// <summary> حساب مفضل (1=نعم) </summary>
    public bool? FavAccount { get; private set; }
    /// <summary> تاريخ أول تعامل نشط </summary>
    public DateTime? FirstActiveDate { get; private set; }
    /// <summary> تاريخ آخر تعامل نشط </summary>
    public DateTime? LastActiveDate { get; private set; }
    /// <summary> مفتاح سري </summary>
    public string? SecretKey { get; private set; }
    /// <summary> السماح بفترة بعد الاستحقاق </summary>
    public short? AllowPeriodAfterDue { get; private set; }
    /// <summary> تاريخ الإدراج بالقائمة السوداء </summary>
    public DateTime? BlackListDate { get; private set; }
    /// <summary> عمر العميل </summary>
    public string? CustomerAge { get; private set; }
    /// <summary> جنس العميل </summary>
    public bool? CustomerGender { get; private set; }
    /// <summary> رقم بطاقة التأمين </summary>
    public string? InsuranceNo { get; private set; }
    /// <summary> رقم الموافقة التأمينية </summary>
    public string? ApprovalNo { get; private set; }
    /// <summary> العميل لديه تأمين (1=نعم) </summary>
    public bool? CustomerInsurance { get; private set; }
    /// <summary> كود مستهدف للعميل </summary>
    public string? CustomerTargetCode { get; private set; }
    /// <summary> عميل تأميني (1=نعم) </summary>
    public bool? InsuranceCustomer { get; private set; }
    /// <summary> رقم شركة التأمين </summary>
    public long? InsuranceCompanyNo { get; private set; }
    /// <summary> رقم الجنسية </summary>
    public int? NationalityNo { get; private set; }
    /// <summary> نوع بطاقة العميل </summary>
    public short? CustomerCardType { get; private set; }
    /// <summary> رقم بطاقة العميل </summary>
    public string? CustomerCardNo { get; private set; }
    /// <summary> مكان إصدار البطاقة </summary>
    public string? CustomerCardIssuePlace { get; private set; }
    /// <summary> تاريخ الإصدار </summary>
    public DateTime? CustomerCardIssueDate { get; private set; }
    /// <summary> تاريخ الانتهاء </summary>
    public DateTime? CustomerCardEndDate { get; private set; }
    /// <summary> مهنة العميل </summary>
    public long? CustomerProfession { get; private set; }
    /// <summary> علم وكيل (1=نعم) </summary>
    public bool? AgentFlag { get; private set; }
    /// <summary> السجل التجاري </summary>
    public string? CustomerCommRegNo { get; private set; }
    /// <summary> اسم النشاط </summary>
    public string? ActivityName { get; private set; }
    /// <summary> كود الدخول للعميل </summary>
    public string? CustomerLoginCode { get; private set; }
    /// <summary> رقم الهوية الوطنية </summary>
    public string? NationalIDNo { get; private set; }
    /// <summary> وصف الهوية الوطنية </summary>
    public string? NationalIDDesc { get; private set; }
    /// <summary> عميل نقدي (1=نعم) </summary>
    public bool? CashCustomer { get; private set; }
    /// <summary> رأس المال المصرح </summary>
    public string? EquityCapital { get; private set; }
    /// <summary> وظيفة الشخص المسؤول </summary>
    public string? ResponsiblePersonJob { get; private set; }
    /// <summary> حد الائتمان المحلي </summary>
    public int? CustomerCreditLimitLocal { get; private set; }
    /// <summary> حد الفواتير المحلي </summary>
    public int? CustomerInvoiceLimitLocal { get; private set; }
    /// <summary> نوع حد الائتمان </summary>
    public bool? CustomerLimitType { get; private set; }
    /// <summary> نسبة حد الائتمان </summary>
    public int? CustomerLimitPercent { get; private set; }
    /// <summary> تاريخ نهاية البطاقة هجري </summary>
    public DateTime? CustomerCardEndDateAH { get; private set; }
    /// <summary> تاريخ إصدار البطاقة هجري </summary>
    public DateTime? CustomerCardIssueDateAH { get; private set; }
    /// <summary> تاريخ الميلاد ميلادي </summary>
    public DateTime? BirthDate { get; private set; }
    /// <summary> تاريخ الميلاد هجري </summary>
    public DateTime? BirthDateAH { get; private set; }
    /// <summary> مكان الميلاد </summary>
    public string? BirthPlace { get; private set; }
    /// <summary> مكان العمل </summary>
    public string? WorkPlace { get; private set; }
    /// <summary> مصدر الدخل </summary>
    public string? SourceOfIncome { get; private set; }
    /// <summary> نسبة مصدر الدخل </summary>
    public int? SourceIncomeRate { get; private set; }
    /// <summary> الحالة الاجتماعية </summary>
    public short? MaritalStatus { get; private set; }
    /// <summary> جهة العمل </summary>
    public string? CompanyWork { get; private set; }
    /// <summary> حالة فحص العميل مالياً </summary>
    public bool? CustomerFinScanStatus { get; private set; }
    /// <summary> تاريخ فتح الملف </summary>
    public DateTime? OpenFileDate { get; private set; }
    /// <summary> تاريخ إغلاق الملف </summary>
    public DateTime? EndFileDate { get; private set; }
    /// <summary> عنوان السكن </summary>
    public string? HomeAddress { get; private set; }
    /// <summary> اسم صورة التوقيع </summary>
    public string? SignatureImageName { get; private set; }
    /// <summary> رقم جواز السفر </summary>
    public string? PassportNo { get; private set; }
    /// <summary> مكان إصدار الجواز </summary>
    public string? PassportIssuePlace { get; private set; }
    /// <summary> تاريخ إصدار الجواز </summary>
    public DateTime? PassportIssueDate { get; private set; }
    /// <summary> تاريخ انتهاء الجواز </summary>
    public DateTime? PassportEndDate { get; private set; }
    /// <summary> الاسم في الجواز </summary>
    public string? NameInPassport { get; private set; }
    /// <summary> مصدر دخل إضافي </summary>
    public short? AdditionalIncomeSource { get; private set; }
    /// <summary> نسبة مصدر الدخل الإضافي </summary>
    public long? AdditionalIncomeRate { get; private set; }
    /// <summary> عدد الأشهر المتبقية للعقد المتوقع </summary>
    public int? ContractRemainingMonthExpect { get; private set; }
    /// <summary> بنك أو شركة أخرى </summary>
    public string? OtherCompanyBank { get; private set; }
    /// <summary> رقم السجل التجاري </summary>
    public string? CommercialRegistrationNo { get; private set; }
    /// <summary> مكان إصدار السجل التجاري </summary>
    public string? RegistrationIssuePlace { get; private set; }
    /// <summary> تاريخ إصدار السجل التجاري </summary>
    public DateTime? RegistrationIssueDate { get; private set; }
    /// <summary> تاريخ انتهاء السجل التجاري </summary>
    public DateTime? RegistrationEndDate { get; private set; }
    /// <summary> طبيعة النشاط التجاري </summary>
    public string? CompanyActivity { get; private set; }
    /// <summary> عميل من دول الخليج (1=نعم) </summary>
    public bool? CustomerGCC { get; private set; }
    /// <summary> تاريخ تحديث ملف العميل </summary>
    public DateTime? CustomerFileUpdateDate { get; private set; }
    /// <summary> نوع الاستفادة </summary>
    public int? CustomerBenefitType { get; private set; }
    /// <summary> اسم الصورة الرئيسية للعميل </summary>
    public string? CustomerMainImageName { get; private set; }
    /// <summary> علم مجموعة ضريبية للعميل </summary>
    public bool? CustomerVATGroupFlag { get; private set; }
    /// <summary> علم يسمح بالتعامل مع العميل </summary>
    public bool? CustomerDealFlag { get; private set; }
    /// <summary> استثناء من عروض الأسعار الترويجية </summary>
    public bool? CustomerExceptQuotationPromotionFlag { get; private set; }
    /// <summary> علم إمكانية التبديل </summary>
    public bool? CustomerExchangeFlag { get; private set; }
    /// <summary> نوع تصنيف العميل </summary>
    public int? CustomerClassType { get; private set; }
    /// <summary> القطاع التجاري للعميل </summary>
    public long? CustomerBusinessSector { get; private set; }
    /// <summary> نسبة الرسوم المضافة </summary>
    public short? CustomerPercentFee { get; private set; }
    /// <summary> رسوم الحساب </summary>
    public string? CustomerAccountFee { get; private set; }
    /// <summary> موافقة تلقائية (1=نعم) </summary>
    public bool AutoApproved { get; private set; }
    /// <summary> نسبة الخصم الافتراضي </summary>
    public int? DiscountPercentDefault { get; private set; }
    /// <summary> السماح بتعديل السعر الثابت </summary>
    public bool? AllowUpdateFixedPrice { get; private set; }
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
    /// <summary> رقم صورة المستخدم الذي أضاف السطر </summary>
    public int? AddedUserPhoto { get; private set; }
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
    /// <summary> نوع تسجيل العميل </summary>
    public short? CustomerRegisterType { get; private set; }
    /// <summary> ربط بنظام HPS </summary>
    public int? ConnectHPSSystem { get; private set; }
    /// <summary> نوع القطاع </summary>
    public bool? SectorType { get; private set; }
    /// <summary> علاقة سياسية (1=نعم) </summary>
    public bool? PoliticalRelationFlag { get; private set; }
    /// <summary> علاقة سياسية مع من </summary>
    public string? PoliticalRelationWith { get; private set; }
    /// <summary> نوع احتساب الضريبة </summary>
    public int? TaxTypeNo { get; private set; }
    /// <summary> باركود العميل </summary>
    public string? CustomerBarcode { get; private set; }
    /// <summary> نوع فتح الزيارة </summary>
    public short? VisitOpenType { get; private set; }
    /// <summary> نوع تسعير الضريبة </summary>
    public bool? VATPriceType { get; private set; }
    /// <summary> رقم GLN </summary>
    public string? GLNCode { get; private set; }
    /// <summary> تسلسل جهاز الجوال للعميل </summary>
    public string? CustomerMobileDeviceSerial { get; private set; }
    /// <summary> حفظ بيانات الدخول (1=نعم) </summary>
    public bool? CustomerSaveLoginData { get; private set; }
    /// <summary> إعادة ضبط كلمة المرور (1=نعم) </summary>
    public bool? CustomerResetPassword { get; private set; }
    /// <summary> رمز التحقق عبر SMS </summary>
    public string? CustomerVerifySMSCode { get; private set; }
    /// <summary> استخدام مزامنة تلقائية عبر الخدمة </summary>
    public int? WebServiceUseAutoSync { get; private set; }
    /// <summary> كود خارجي للخدمة </summary>
    public string? WebServiceExternalCode { get; private set; }
    /// <summary> رقم مستخدم الخدمة </summary>
    public string? WebServiceUserNo { get; private set; }
    /// <summary> كلمة مرور الخدمة </summary>
    public string? WebServicePassword { get; private set; }
    /// <summary> رابط الخدمة </summary>
    public string? WebServiceLink { get; private set; }
    /// <summary> كود العرض الترويجي </summary>
    public string? PromotionCode { get; private set; }
    /// <summary> رقم الموظف </summary>
    public long? EmployeeNo { get; private set; }
    /// <summary> نوع الاستحقاق </summary>
    public bool? DueType { get; private set; }
    /// <summary> رقم تسلسلي لوكيل العميل </summary>
    public string? AgentCustomerNoSerial { get; private set; }
    /// <summary> عدد أيام الفترة </summary>
    public int? PeriodDay { get; private set; }
    /// <summary> حد عدد التقارير الكمية </summary>
    public int? ReportQtyLimitCount { get; private set; }
    /// <summary> نوع كمية حد العنصر </summary>
    public bool? LimitItemQtyType { get; private set; }
    /// <summary> ملاحظات التأكيد </summary>
    public string? ConfirmNote { get; private set; }
    /// <summary> استخدام الحافظة (1=نعم) </summary>
    public bool? UseHolster { get; private set; }
    /// <summary> نوع التعويض </summary>
    public int? CompensationType { get; private set; }
    /// <summary> تم الترحيل خارجيًا (1=نعم) </summary>
    public int? ExternalPost { get; private set; }
    /// <summary> عميل خفيف (1=نعم) </summary>
    public bool? CustomerLightFlag { get; private set; }
    /// <summary> رقم المبنى </summary>
    public string? BuildingNo { get; private set; }
    /// <summary> اسم الشارع </summary>
    public string? Street { get; private set; }
    public Account Account { get; private set; } // Navigation
    public Region Region { get; private set; } // Navigation
    public City City { get; private set; } // Navigation
    public Country Country { get; private set; } // Navigation
    public CustomerClass CustomerClass { get; private set; } // Navigation
    public CustomerClassType CustomerClassType { get; private set; } // Navigation
    public CustomerDegree CustomerDegree { get; private set; } // Navigation
    public CustomerGroup CustomerGroup { get; private set; } // Navigation
    public ICollection<CustomerBankAccount> CustomerBankAccounts { get; private set; } // Inverse Navigation
    public ICollection<CustomerCurrency> CustomerCurrencies { get; private set; } // Inverse Navigation
    public ICollection<JournalDetail> JournalDetails { get; private set; } // Inverse Navigation
    public ICollection<SalesInvoice> SalesInvoices { get; private set; } // Inverse Navigation
    public ICollection<PurchaseReturn> PurchaseReturns { get; private set; } // Inverse Navigation
    public ICollection<Note> Notes { get; private set; } // Inverse Navigation
    public ICollection<SalesQuotation> SalesQuotations { get; private set; } // Inverse Navigation
    public ICollection<SalesChargesItems> SalesChargesItemses { get; private set; } // Inverse Navigation
    public ICollection<SalesDiscount> SalesDiscounts { get; private set; } // Inverse Navigation
    public ICollection<SalesFreeQty> SalesFreeQties { get; private set; } // Inverse Navigation
    public ICollection<SalesOrder> SalesOrders { get; private set; } // Inverse Navigation
    public ICollection<PosCreditBill> PosCreditBills { get; private set; } // Inverse Navigation
    public ICollection<PosCreditBillDetail> PosCreditBillDetails { get; private set; } // Inverse Navigation
    public ICollection<PosCreditBillMaster> PosCreditBillMasters { get; private set; } // Inverse Navigation
    public ICollection<VoucherDetail> VoucherDetails { get; private set; } // Inverse Navigation
}