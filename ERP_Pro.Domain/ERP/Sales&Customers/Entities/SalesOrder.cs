public class SalesOrder
{
    /// <summary> نوع أمر البيع (فاتورة، طلب، عرض...). </summary>
    public int OrderType { get; private set; }
    /// <summary> رقم أمر البيع الرئيسي. </summary>
    public long OrderNo { get; private set; }
    /// <summary> الرقم التسلسلي للأمر. </summary>
    public long? OrderSerial { get; private set; }
    /// <summary> تاريخ إصدار أمر البيع. </summary>
    public DateTime OrderDate { get; private set; }
    /// <summary> رقم عرض السعر المرتبط. </summary>
    public long? QuotationNo { get; private set; }
    /// <summary> الرقم التسلسلي لعرض السعر. </summary>
    public long? QuotationSerial { get; private set; }
    /// <summary> رمز العملة. </summary>
    public string CurrencyCode { get; private set; }
    /// <summary> سعر صرف العملة. </summary>
    public int? CurrencyRate { get; private set; }
    /// <summary> كود العميل. </summary>
    public string? CustomerCode { get; private set; }
    /// <summary> اسم العميل. </summary>
    public string? CustomerName { get; private set; }
    /// <summary> ملاحظات أو شرح للأمر. </summary>
    public string? Description { get; private set; }
    /// <summary> مركز التكلفة. </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> رقم المشروع المرتبط. </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> رقم النشاط المرتبط. </summary>
    public string? ActivityNo { get; private set; }
    /// <summary> كود المستودع المرتبط. </summary>
    public long? WarehouseCode { get; private set; }
    /// <summary> كود المندوب. </summary>
    public string? SalesRepCode { get; private set; }
    /// <summary> تمت المعالجة (1=نعم). </summary>
    public bool? Processed { get; private set; }
    /// <summary> قيد الانتظار. </summary>
    public bool? StandBy { get; private set; }
    /// <summary> تم التحميل (لوجستي). </summary>
    public bool? Loaded { get; private set; }
    /// <summary> رقم مستند مرجعي. </summary>
    public string? RefDocNo { get; private set; }
    /// <summary> تاريخ المستند المرجعي. </summary>
    public DateTime? RefDocDate { get; private set; }
    /// <summary> مبلغ الخصم. </summary>
    public int? DiscountAmount { get; private set; }
    /// <summary> مبلغ الخصم الرئيسي. </summary>
    public int? DiscountAmountMaster { get; private set; }
    /// <summary> مبلغ الخصم التفصيلي. </summary>
    public int? DiscountAmountDetail { get; private set; }
    /// <summary> مبلغ الخصم الرئيسي بعد الضريبة. </summary>
    public int? DiscountAmountMasterVAT { get; private set; }
    /// <summary> ضريبة الخصم الرئيسي. </summary>
    public int? VATDiscountMaster { get; private set; }
    /// <summary> تمت الموافقة (1=نعم). </summary>
    public bool? Approved { get; private set; }
    /// <summary> المستخدم الذي اعتمد الأمر. </summary>
    public int? ApprovedUserId { get; private set; }
    /// <summary> تاريخ الاعتماد. </summary>
    public DateTime? ApprovedDate { get; private set; }
    /// <summary> وصف الاعتماد. </summary>
    public string? ApprovedDesc { get; private set; }
    /// <summary> تاريخ التحضير. </summary>
    public DateTime? PrepareDate { get; private set; }
    /// <summary> تاريخ استلام العميل. </summary>
    public DateTime? ReceiveDealerDate { get; private set; }
    /// <summary> تاريخ التسليم. </summary>
    public DateTime? DeliveryDate { get; private set; }
    /// <summary> تكرار الاستخدام في الفواتير. </summary>
    public bool? RepeatUseInBills { get; private set; }
    /// <summary> معطل (1=نعم). </summary>
    public bool? Inactive { get; private set; }
    /// <summary> سبب التعطيل. </summary>
    public string? InactiveReason { get; private set; }
    /// <summary> تاريخ التعطيل. </summary>
    public DateTime? InactiveDate { get; private set; }
    /// <summary> المستخدم الذي عطل السطر. </summary>
    public int? InactiveUserId { get; private set; }
    /// <summary> رقم الورقة. </summary>
    public int? PaperNo { get; private set; }
    /// <summary> الرقم التسلسلي للورقة. </summary>
    public int? PaperSerial { get; private set; }
    /// <summary> كود المنطقة. </summary>
    public long? RegionCode { get; private set; }
    /// <summary> كود العرض الترويجي. </summary>
    public string? PromotionCode { get; private set; }
    /// <summary> رقم السائق. </summary>
    public long? DriverNo { get; private set; }
    /// <summary> نوع مستند الفاتورة المرتبط. </summary>
    public short? BillDocType { get; private set; }
    /// <summary> تاريخ استحقاق الفاتورة. </summary>
    public DateTime? BillDueDate { get; private set; }
    /// <summary> تاريخ انتهاء الأمر. </summary>
    public DateTime? OrderExpireDate { get; private set; }
    /// <summary> تاريخ استحقاق الشيك. </summary>
    public DateTime? ChequeDueDate { get; private set; }
    /// <summary> علم الترحيل الخارجي. </summary>
    public int? ExternalPost { get; private set; }
    /// <summary> علم معالجة الإدخال. </summary>
    public bool? ProcessIncFlag { get; private set; }
    /// <summary> علم معالجة تحويل المستودع. </summary>
    public bool? ProcessWHTransferFlag { get; private set; }
    /// <summary> تم اعتماد مدير المبيعات. </summary>
    public bool? ApprovedSalesMng { get; private set; }
    /// <summary> المستخدم الذي اعتمد مدير المبيعات. </summary>
    public int? ApprovedSalesMngUserId { get; private set; }
    /// <summary> تاريخ اعتماد مدير المبيعات. </summary>
    public DateTime? ApprovedSalesMngDate { get; private set; }
    /// <summary> تحويل منتج. </summary>
    public bool? TransferProduct { get; private set; }
    /// <summary> تصدير (1=نعم). </summary>
    public bool? Export { get; private set; }
    /// <summary> مبلغ الضريبة. </summary>
    public int? VATAmount { get; private set; }
    /// <summary> إجمالي قيمة الأمر. </summary>
    public int? OrderAmount { get; private set; }
    /// <summary> رقم الموظف. </summary>
    public long? EmployeeNo { get; private set; }
    /// <summary> مبالغ أخرى للفاتورة. </summary>
    public int? OtherAmount { get; private set; }
    /// <summary> نوع فاتورة البيع. </summary>
    public int? SalesInvoiceType { get; private set; }
    /// <summary> نوع احتساب الضريبة. </summary>
    public int? TaxTypeNo { get; private set; }
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
    /// <summary> رقم شركة التأمين. </summary>
    public long? InsuranceCompanyNo { get; private set; }
    /// <summary> رقم المستفيد التأميني. </summary>
    public int? InsuranceBenefitNo { get; private set; }
    /// <summary> اسم المؤمن عليه. </summary>
    public string? InsurancePersonName { get; private set; }
    /// <summary> رقم بطاقة التأمين. </summary>
    public string? InsuranceCardNo { get; private set; }
    /// <summary> رقم بطاقة العائلة. </summary>
    public string? InsuranceCardNoFamily { get; private set; }
    /// <summary> نوع علاقة التأمين. </summary>
    public short? InsuranceRelationType { get; private set; }
    /// <summary> رقم تصنيف التأمين. </summary>
    public string? InsuranceClassNo { get; private set; }
    /// <summary> نسبة التحميل التأميني. </summary>
    public int? InsuranceLoadPercent { get; private set; }
    /// <summary> التشخيص الطبي. </summary>
    public string? InsuranceDiagnosis { get; private set; }
    /// <summary> رقم الملف الطبي. </summary>
    public int? InsuranceMedicalNo { get; private set; }
    /// <summary> كود الموافقة التأمينية. </summary>
    public string? InsuranceApprovedCode { get; private set; }
    /// <summary> مبلغ النقد التأميني. </summary>
    public int? InsuranceCashAmount { get; private set; }
    /// <summary> كود العميل النقدي. </summary>
    public string? CustomerCashCode { get; private set; }
    /// <summary> عنوان العميل. </summary>
    public string? CustomerAddress { get; private set; }
    /// <summary> جوال العميل. </summary>
    public string? CustomerMobile { get; private set; }
    /// <summary> مسار التحويل. </summary>
    public string? NTTransferPath { get; private set; }
    /// <summary> إحداثيات الموقع (عرض). </summary>
    public string? Latitude { get; private set; }
    /// <summary> إحداثيات الموقع (طول). </summary>
    public string? Longitude { get; private set; }
    /// <summary> رقم الكاشير. </summary>
    public long? CashNo { get; private set; }
    /// <summary> المستخدم الذي أضاف السطر. </summary>
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة. </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> المستخدم الذي عدل السطر. </summary>
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل. </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> عدد مرات التعديل. </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> أولوية التقرير. </summary>
    public long? ReportPriority { get; private set; }
    /// <summary> رقم الشركة. </summary>
    public short CompanyNo { get; private set; }
    /// <summary> رقم الفرع. </summary>
    public int BranchNo { get; private set; }
    /// <summary> السنة المالية للفرع. </summary>
    public short? BranchYear { get; private set; }
    /// <summary> مستخدم الفرع. </summary>
    public short? BranchUser { get; private set; }
    /// <summary> الجهاز عند الإضافة. </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> الجهاز عند التعديل. </summary>
    public string? UpdatedTerminal { get; private set; }
    /// <summary> ضريبة مبالغ أخرى. </summary>
    public int? VATAmountOther { get; private set; }
    /// <summary> فرق وزن فعلي/كمية. </summary>
    public int? DiffActualWeightSoQty { get; private set; }
    /// <summary> وزن التعبئة الفارغة. </summary>
    public int? TareWeight { get; private set; }
    /// <summary> تاريخ وزن التعبئة الفارغة. </summary>
    public DateTime? TareWeightDate { get; private set; }
    /// <summary> المستخدم الذي سجل وزن التعبئة. </summary>
    public int? TareWeightUserId { get; private set; }
    /// <summary> الوزن الإجمالي. </summary>
    public int? GrossWeight { get; private set; }
    /// <summary> تاريخ الوزن الإجمالي. </summary>
    public DateTime? GrossWeightDate { get; private set; }
    /// <summary> المستخدم الذي سجل الوزن الإجمالي. </summary>
    public int? GrossWeightUserId { get; private set; }
    /// <summary> رقم تسلسلي خارجي. </summary>
    public string? DocSerExternal { get; private set; }
    /// <summary> رقم بطاقة الائتمان. </summary>
    public int? CreditCardNo { get; private set; }
    /// <summary> الخصم بعد الضريبة. </summary>
    public int? DiscountAmountAfterVAT { get; private set; }
    /// <summary> نوع سعر الضريبة. </summary>
    public bool? VATPriceType { get; private set; }
    /// <summary> رقم العقد. </summary>
    public string? ContractNo { get; private set; }
    /// <summary> رقم دفعة العقد. </summary>
    public long? ContractBatchNo { get; private set; }
    /// <summary> تاريخ العقد. </summary>
    public DateTime? ContractDate { get; private set; }
    /// <summary> رقم التحصيل. </summary>
    public long? CollectionNo { get; private set; }
    /// <summary> سعر المخزون. </summary>
    public int? StockRate { get; private set; }
    /// <summary> علم معالجة إخراج الفاتورة. </summary>
    public bool? ProcessOutFlag { get; private set; }
    /// <summary> نوع احتساب نقاط الولاء. </summary>
    public bool? PointCalcTypeNo { get; private set; }
    /// <summary> عدد النقاط. </summary>
    public int? PointCount { get; private set; }
    /// <summary> إجمالي النقاط. </summary>
    public int? PointCountAll { get; private set; }
    /// <summary> قيمة استبدال النقاط. </summary>
    public int? PointReplaceAmount { get; private set; }
    /// <summary> عدد نقاط الاستبدال. </summary>
    public int? PointReplaceCount { get; private set; }
    /// <summary> نوع نقاط الولاء. </summary>
    public int? PointTypeNo { get; private set; }
    /// <summary> رقم الجوال. </summary>
    public long? MobileNo { get; private set; }
    /// <summary> علم معالجة السعر المقترح (MRP). </summary>
    public bool? ProcessMRPFlag { get; private set; }
    /// <summary> عدم استخدام عروض الأسعار الترويجية. </summary>
    public bool? NotUseQuotationPromotion { get; private set; }
    /// <summary> رقم تسلسلي لعرض السعر الترويجي. </summary>
    public long? QuotationPromotionSer { get; private set; }
    /// <summary> رقم سجل عرض السعر الترويجي. </summary>
    public long? QuotationPromotionRecordNo { get; private set; }
    /// <summary> رقم عرض السعر الترويجي. </summary>
    public long? QuotationPromotionNo { get; private set; }
    /// <summary> علم الكمية المعفاة من الضريبة. </summary>
    public bool? CalcTaxFreeQtyFlag { get; private set; }
    /// <summary> حد إضافي تأميني رئيسي. </summary>
    public int? InsuranceAddLimitMaster { get; private set; }
    /// <summary> تاريخ إضافة السطر (بالساعة). </summary>
    public DateTime? AddedDateClock { get; private set; }
    /// <summary> نوع النظام الظاهر. </summary>
    public short? ShowSystemType { get; private set; }
    /// <summary> نوع حالة الطلب. </summary>
    public short? OrderStatusType { get; private set; }
    /// <summary> مرجع المناقصة. </summary>
    public string? OrderTender { get; private set; }
    /// <summary> اسم المتخصص بالعميل. </summary>
    public string? CustomerSpecialistName { get; private set; }
    /// <summary> رقم الطلب اليدوي. </summary>
    public string? OrderNoManual { get; private set; }
    /// <summary> حد إضافي تأميني حسب مستند. </summary>
    public int? InsuranceAddLimitDoc { get; private set; }
    /// <summary> حد إضافي تأميني تفصيلي. </summary>
    public int? InsuranceAddLimitDtl { get; private set; }
    /// <summary> حد محلي حسب مستند. </summary>
    public int? InsuranceLimitAmountLocalDoc { get; private set; }
    /// <summary> رقم المريض. </summary>
    public string? PatientNo { get; private set; }
    /// <summary> رقم الطبيب. </summary>
    public string? DoctorNo { get; private set; }
    /// <summary> نوع المريض. </summary>
    public bool? PatientType { get; private set; }
    /// <summary> رقم مستند الدخول. </summary>
    public long? AdmissionDocNo { get; private set; }
    /// <summary> الرقم التسلسلي للدخول. </summary>
    public long? AdmissionDocSerial { get; private set; }
    /// <summary> رقم تسلسلي مؤقت. </summary>
    public int? DocMSq { get; private set; }
    /// <summary> نوع قبول العميل. </summary>
    public bool? CustomerAcceptType { get; private set; }
    /// <summary> مستخدم قبول العميل. </summary>
    public int? CustomerAcceptUserId { get; private set; }
    /// <summary> تاريخ قبول العميل. </summary>
    public DateTime? CustomerAcceptDate { get; private set; }
    /// <summary> وصف قبول العميل. </summary>
    public string? CustomerAcceptDesc { get; private set; }
    /// <summary> طلب معالجة تلقائي. </summary>
    public bool? ProcessRequestAuto { get; private set; }
    public CurrencyExchangeRate CurrencyExchangeRate { get; private set; } // Navigation
    public Region Region { get; private set; } // Navigation
    public Customer Customer { get; private set; } // Navigation
    public ICollection<SalesOrderDetail> SalesOrderDetails { get; private set; } // Inverse Navigation
}