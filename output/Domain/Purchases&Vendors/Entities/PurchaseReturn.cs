public class PurchaseReturn
{
    public short ReturnBillDocType { get; private set; }
    public long ReturnBillNo { get; private set; }
    public long ReturnBillSerial { get; private set; }
    /// <summary> السنة المالية </summary>
    public int? PurchaseYear { get; private set; }
    /// <summary> تاريخ مرتجع المشتريات </summary>
    public DateTime ReturnBillDate { get; private set; }
    /// <summary> رمز العملة </summary>
    public string? CurrencyCode { get; private set; }
    /// <summary> سعر الصرف </summary>
    public int? CurrencyRate { get; private set; }
    /// <summary> سعر المخزون </summary>
    public int? StockRate { get; private set; }
    /// <summary> كود العميل (عند الحاجة) </summary>
    public string? CustomerCode { get; private set; }
    /// <summary> اسم العميل </summary>
    public string? CustomerName { get; private set; }
    /// <summary> كود الحساب المحاسبي </summary>
    public string? AccountCode { get; private set; }
    public long? ChequeNo { get; private set; }
    /// <summary> مبلغ الشيك </summary>
    public int? ChequeAmount { get; private set; }
    /// <summary> تاريخ استحقاق الشيك </summary>
    public DateTime? ChequeDueDate { get; private set; }
    /// <summary> تاريخ استحقاق الفاتورة </summary>
    public DateTime? BillDueDate { get; private set; }
    public bool? BillPost { get; private set; }
    /// <summary> مبلغ الخصم </summary>
    public int? DiscountAmount { get; private set; }
    /// <summary> خصم رئيسي </summary>
    public int? DiscountAmountMaster { get; private set; }
    /// <summary> خصم تفصيلي </summary>
    public int? DiscountAmountDetail { get; private set; }
    /// <summary> خصم رئيسي بعد الضريبة </summary>
    public int? DiscountAmountMasterVAT { get; private set; }
    /// <summary> ضريبة الخصم الرئيسي </summary>
    public int? VATDiscountMaster { get; private set; }
    /// <summary> إجمالي مبلغ المرتجع </summary>
    public int? BillAmount { get; private set; }
    /// <summary> مبلغ الضريبة </summary>
    public int? VATAmount { get; private set; }
    /// <summary> مبالغ أخرى </summary>
    public int? OtherAmount { get; private set; }
    public long? WarehouseCode { get; private set; }
    public long? RegionCode { get; private set; }
    public long? CashNo { get; private set; }
    /// <summary> مركز التكلفة </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> رقم المشروع </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> رقم النشاط </summary>
    public string? ActivityNo { get; private set; }
    /// <summary> حساب النقد الأجنبي </summary>
    public string? CashAccountFCC { get; private set; }
    public long? CashNoFCC { get; private set; }
    /// <summary> كود المندوب </summary>
    public string? RepCode { get; private set; }
    public long? EmployeeNo { get; private set; }
    public int? SReturnType { get; private set; }
    /// <summary> نسبة العمولة </summary>
    public int? CommissionPercent { get; private set; }
    /// <summary> رقم مرجعي إضافي </summary>
    public string? ReferenceNo { get; private set; }
    /// <summary> ملاحظات المرتجع </summary>
    public string? Description { get; private set; }
    public short? AttachCount { get; private set; }
    /// <summary> سبب المرتجع </summary>
    public string? ReturnReason { get; private set; }
    public bool? Processed { get; private set; }
    public long? ReportPriority { get; private set; }
    public short? PreviousYear { get; private set; }
    public long? ClassifyNo { get; private set; }
    public long? ClassifySer { get; private set; }
    public bool? ReturnPY { get; private set; }
    public int? ExternalPost { get; private set; }
    /// <summary> خصم بعد الضريبة </summary>
    public int? DiscountAmountAfterVAT { get; private set; }
    public bool? AuditRef { get; private set; }
    /// <summary> وصف مرجع التدقيق </summary>
    public string? AuditRefDesc { get; private set; }
    public int? AuditRefUserId { get; private set; }
    /// <summary> تاريخ مرجع التدقيق </summary>
    public DateTime? AuditRefDate { get; private set; }
    public long? WarehouseCodeBill { get; private set; }
    /// <summary> مركز تكلفة للفواتير </summary>
    public string? CostCenterCodeBill { get; private set; }
    /// <summary> كود مندوب للفواتير </summary>
    public string? RepCodeBill { get; private set; }
    public bool? ReturnType { get; private set; }
    public bool? PaidReturnBill { get; private set; }
    public int? PaidUserId { get; private set; }
    /// <summary> تاريخ الدفع </summary>
    public DateTime? PaidDate { get; private set; }
    public bool? ReceiveInvoiceReturnBill { get; private set; }
    public int? ReceiveInvoiceUserId { get; private set; }
    /// <summary> تاريخ استلام الفاتورة </summary>
    public DateTime? ReceiveInvoiceDate { get; private set; }
    public bool? StandBy { get; private set; }
    /// <summary> رقم الملاحظة </summary>
    public string? NoteNo { get; private set; }
    public long? DriverNo { get; private set; }
    public int? DocumentBranchNo { get; private set; }
    public int? ReservationType { get; private set; }
    /// <summary> كود العرض الترويجي </summary>
    public string? PromotionCode { get; private set; }
    public long? DocumentNoPDA { get; private set; }
    /// <summary> اسم جهاز PDA </summary>
    public string? PDAName { get; private set; }
    public long? InsuranceCompanyNo { get; private set; }
    public int? InsuranceBenefitNo { get; private set; }
    /// <summary> اسم مستفيد التأمين </summary>
    public string? InsurancePersonName { get; private set; }
    /// <summary> رقم بطاقة التأمين </summary>
    public string? InsuranceCardNo { get; private set; }
    /// <summary> رقم بطاقة عائلية </summary>
    public string? InsuranceCardNoFamily { get; private set; }
    public short? InsuranceRelationType { get; private set; }
    /// <summary> رقم فئة التأمين </summary>
    public string? InsuranceClassNo { get; private set; }
    /// <summary> مبلغ النقد للتأمين </summary>
    public int? InsuranceCashAmount { get; private set; }
    /// <summary> مبلغ العمولة التفصيلية </summary>
    public int? CommissionAmountDetail { get; private set; }
    public bool? CustomerGCC { get; private set; }
    public bool? ExportFlag { get; private set; }
    /// <summary> مبلغ الضريبة الأخرى </summary>
    public int? VATAmountOther { get; private set; }
    /// <summary> خصم إضافي رئيسي </summary>
    public int? AddDiscountAmountMaster { get; private set; }
    /// <summary> خصم إضافي تفصيلي </summary>
    public int? AddDiscountAmountDetail { get; private set; }
    /// <summary> خصم على المبالغ الأخرى </summary>
    public int? OtherAmountDiscount { get; private set; }
    public bool? WithoutVAT { get; private set; }
    public bool? ReturnVATPeriodType { get; private set; }
    /// <summary> هاتف العميل </summary>
    public string? CustomerTel { get; private set; }
    /// <summary> كود عميل نقدي </summary>
    public string? CustomerCashCode { get; private set; }
    /// <summary> مبلغ استبدال النقاط </summary>
    public int? PointReplaceAmount { get; private set; }
    public int? PointTypeNo { get; private set; }
    public int? PointCount { get; private set; }
    public int? PointReplaceCount { get; private set; }
    public bool? CreditCardFlag { get; private set; }
    public int? CreditCardNo { get; private set; }
    /// <summary> مبلغ بطاقة الائتمان </summary>
    public int? CreditCardAmount { get; private set; }
    /// <summary> نسبة عمولة بطاقة الائتمان </summary>
    public int? CreditCardCommPercent { get; private set; }
    public int? CreditCardNoSecond { get; private set; }
    /// <summary> مبلغ البطاقة الثانية </summary>
    public int? CreditCardAmountSecond { get; private set; }
    /// <summary> نسبة عمولة البطاقة الثانية </summary>
    public int? CreditCardCommPercentSecond { get; private set; }
    public int? CreditCardNoThird { get; private set; }
    /// <summary> مبلغ البطاقة الثالثة </summary>
    public int? CreditCardAmountThird { get; private set; }
    /// <summary> نسبة عمولة البطاقة الثالثة </summary>
    public int? CreditCardCommPercentThird { get; private set; }
    public int? VATTypeNo { get; private set; }
    /// <summary> مبلغ الحساب </summary>
    public int? AccountAmount { get; private set; }
    /// <summary> حقل مرن 1 </summary>
    public string? Field1 { get; private set; }
    /// <summary> حقل مرن 2 </summary>
    public string? Field2 { get; private set; }
    /// <summary> حقل مرن 3 </summary>
    public string? Field3 { get; private set; }
    /// <summary> حقل مرن 4 </summary>
    public string? Field4 { get; private set; }
    /// <summary> حقل مرن 5 </summary>
    public string? Field5 { get; private set; }
    /// <summary> حقل مرن 6 </summary>
    public string? Field6 { get; private set; }
    /// <summary> حقل مرن 7 </summary>
    public string? Field7 { get; private set; }
    /// <summary> حقل مرن 8 </summary>
    public string? Field8 { get; private set; }
    /// <summary> حقل مرن 9 </summary>
    public string? Field9 { get; private set; }
    /// <summary> حقل مرن 10 </summary>
    public string? Field10 { get; private set; }
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public long? UpdateCount { get; private set; }
    public int? PostUserId { get; private set; }
    /// <summary> تاريخ الترحيل </summary>
    public DateTime? PostDate { get; private set; }
    public int? UnpostUserId { get; private set; }
    /// <summary> تاريخ إلغاء الترحيل </summary>
    public DateTime? UnpostDate { get; private set; }
    public short CompanyNo { get; private set; }
    public int BranchNo { get; private set; }
    public short? BranchYear { get; private set; }
    public short? BranchUser { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    /// <summary> رقم المريض (اختياري في أنظمة طبية) </summary>
    public string? PatientNo { get; private set; }
    /// <summary> رقم الطبيب </summary>
    public string? DoctorNo { get; private set; }
    public bool? PatientType { get; private set; }
    public long? DocumentNoAdmission { get; private set; }
    public long? DocumentSerialAdmission { get; private set; }
    /// <summary> كود حساب إضافي </summary>
    public string? AccountCode2 { get; private set; }
    /// <summary> كود حساب فرعي </summary>
    public string? AccountCodeDetail { get; private set; }
    public short? AccountDetailType { get; private set; }
    /// <summary> حساب الدفع </summary>
    public int? PaymentAccount { get; private set; }
    /// <summary> نسبة تحميل التأمين الرئيسي </summary>
    public int? InsuranceLoadPercentMaster { get; private set; }
    /// <summary> تسلسل المستند الخارجي </summary>
    public string? DocumentSerialExternal { get; private set; }
    public bool? CancelFlag { get; private set; }
    public bool? VATPriceType { get; private set; }
    public long? CollectorNo { get; private set; }
    public short? RMSReturnBillDocType { get; private set; }
    public bool? RMSFreeFlag { get; private set; }
    /// <summary> رقم مستند HRS المرجعي </summary>
    public int? HRS_DocNoRef { get; private set; }
    /// <summary> نوع مستند HRS المرجعي </summary>
    public int? HRS_DocTypeRef { get; private set; }
    /// <summary> تسلسل مستند HRS المرجعي </summary>
    public int? HRS_DocSerRef { get; private set; }
    public bool? ReturnBillType { get; private set; }
    public bool? TaxFreeQtyFlag { get; private set; }
    /// <summary> حد إضافي تأميني رئيسي </summary>
    public int? InsuranceAddLimitMaster { get; private set; }
    /// <summary> تاريخ الإضافة بالساعة </summary>
    public DateTime? AddedDateClock { get; private set; }
    /// <summary> حد إضافي تأميني للمستند </summary>
    public int? InsuranceAddLimitDoc { get; private set; }
    /// <summary> حد إضافي تأميني تفصيلي </summary>
    public int? InsuranceAddLimitDetail { get; private set; }
    /// <summary> حد التأمين المحلي للمستند </summary>
    public int? InsuranceLimitAmountLocalDoc { get; private set; }
    /// <summary> وصف بطاقة الائتمان </summary>
    public string? CreditCardDesc { get; private set; }
    /// <summary> وصف البطاقة الثانية </summary>
    public string? CreditCardDescSecond { get; private set; }
    /// <summary> وصف البطاقة الثالثة </summary>
    public string? CreditCardDescThird { get; private set; }
    /// <summary> كود العميل للبطاقة الثالثة </summary>
    public string? CreditCardCustomerNoThird { get; private set; }
    /// <summary> كود العميل للبطاقة الثانية </summary>
    public string? CreditCardCustomerNoSecond { get; private set; }
    /// <summary> كود العميل للبطاقة </summary>
    public string? CreditCardCustomerNo { get; private set; }
    public long? CreditCardDocNoRefSecond { get; private set; }
    public long? CreditCardDocNoRef { get; private set; }
    public long? CreditCardDocNoRefThird { get; private set; }
    /// <summary> الحد الأعلى لعمولة البطاقة </summary>
    public int? CreditCardMaxCommAmount { get; private set; }
    /// <summary> الحد الأعلى لعمولة البطاقة الثانية </summary>
    public int? CreditCardMaxCommAmountSecond { get; private set; }
    /// <summary> الحد الأعلى لعمولة البطاقة الثالثة </summary>
    public int? CreditCardMaxCommAmountThird { get; private set; }
    /// <summary> رقم تسلسلي مؤقت </summary>
    public int? DocMSq { get; private set; }
    public bool? WebServiceTransferDataFlag { get; private set; }
    /// <summary> UUID للخدمة </summary>
    public string? WebServiceUUID { get; private set; }
    public AccountCurrency AccountCurrency { get; private set; } // Navigation
    public Project Project { get; private set; } // Navigation
    public Region Region { get; private set; } // Navigation
    public Customer Customer { get; private set; } // Navigation
    public Warehouse Warehouse { get; private set; } // Navigation
    public ICollection<PurchaseReturnDetail> PurchaseReturnDetails { get; private set; } // Inverse Navigation
}