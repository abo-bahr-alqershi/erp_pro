public class SalesOrder
{
    public int OrderType { get; private set; }
    public long OrderNo { get; private set; }
    public long? OrderSerial { get; private set; }
    /// <summary> تاريخ إصدار أمر البيع. </summary>
    public DateTime OrderDate { get; private set; }
    public long? QuotationNo { get; private set; }
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
    public long? WarehouseCode { get; private set; }
    /// <summary> كود المندوب. </summary>
    public string? SalesRepCode { get; private set; }
    public bool? Processed { get; private set; }
    public bool? StandBy { get; private set; }
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
    public bool? Approved { get; private set; }
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
    public bool? RepeatUseInBills { get; private set; }
    public bool? Inactive { get; private set; }
    /// <summary> سبب التعطيل. </summary>
    public string? InactiveReason { get; private set; }
    /// <summary> تاريخ التعطيل. </summary>
    public DateTime? InactiveDate { get; private set; }
    public int? InactiveUserId { get; private set; }
    /// <summary> رقم الورقة. </summary>
    public int? PaperNo { get; private set; }
    /// <summary> الرقم التسلسلي للورقة. </summary>
    public int? PaperSerial { get; private set; }
    public long? RegionCode { get; private set; }
    /// <summary> كود العرض الترويجي. </summary>
    public string? PromotionCode { get; private set; }
    public long? DriverNo { get; private set; }
    public short? BillDocType { get; private set; }
    /// <summary> تاريخ استحقاق الفاتورة. </summary>
    public DateTime? BillDueDate { get; private set; }
    /// <summary> تاريخ انتهاء الأمر. </summary>
    public DateTime? OrderExpireDate { get; private set; }
    /// <summary> تاريخ استحقاق الشيك. </summary>
    public DateTime? ChequeDueDate { get; private set; }
    public int? ExternalPost { get; private set; }
    public bool? ProcessIncFlag { get; private set; }
    public bool? ProcessWHTransferFlag { get; private set; }
    public bool? ApprovedSalesMng { get; private set; }
    public int? ApprovedSalesMngUserId { get; private set; }
    /// <summary> تاريخ اعتماد مدير المبيعات. </summary>
    public DateTime? ApprovedSalesMngDate { get; private set; }
    public bool? TransferProduct { get; private set; }
    public bool? Export { get; private set; }
    /// <summary> مبلغ الضريبة. </summary>
    public int? VATAmount { get; private set; }
    /// <summary> إجمالي قيمة الأمر. </summary>
    public int? OrderAmount { get; private set; }
    public long? EmployeeNo { get; private set; }
    /// <summary> مبالغ أخرى للفاتورة. </summary>
    public int? OtherAmount { get; private set; }
    public int? SalesInvoiceType { get; private set; }
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
    public long? InsuranceCompanyNo { get; private set; }
    public int? InsuranceBenefitNo { get; private set; }
    /// <summary> اسم المؤمن عليه. </summary>
    public string? InsurancePersonName { get; private set; }
    /// <summary> رقم بطاقة التأمين. </summary>
    public string? InsuranceCardNo { get; private set; }
    /// <summary> رقم بطاقة العائلة. </summary>
    public string? InsuranceCardNoFamily { get; private set; }
    public short? InsuranceRelationType { get; private set; }
    /// <summary> رقم تصنيف التأمين. </summary>
    public string? InsuranceClassNo { get; private set; }
    /// <summary> نسبة التحميل التأميني. </summary>
    public int? InsuranceLoadPercent { get; private set; }
    /// <summary> التشخيص الطبي. </summary>
    public string? InsuranceDiagnosis { get; private set; }
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
    public long? CashNo { get; private set; }
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة. </summary>
    public DateTime? AddedDate { get; private set; }
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل. </summary>
    public DateTime? UpdatedDate { get; private set; }
    public long? UpdateCount { get; private set; }
    public long? ReportPriority { get; private set; }
    public short CompanyNo { get; private set; }
    public int BranchNo { get; private set; }
    public short? BranchYear { get; private set; }
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
    public int? TareWeightUserId { get; private set; }
    /// <summary> الوزن الإجمالي. </summary>
    public int? GrossWeight { get; private set; }
    /// <summary> تاريخ الوزن الإجمالي. </summary>
    public DateTime? GrossWeightDate { get; private set; }
    public int? GrossWeightUserId { get; private set; }
    /// <summary> رقم تسلسلي خارجي. </summary>
    public string? DocSerExternal { get; private set; }
    public int? CreditCardNo { get; private set; }
    /// <summary> الخصم بعد الضريبة. </summary>
    public int? DiscountAmountAfterVAT { get; private set; }
    public bool? VATPriceType { get; private set; }
    /// <summary> رقم العقد. </summary>
    public string? ContractNo { get; private set; }
    public long? ContractBatchNo { get; private set; }
    /// <summary> تاريخ العقد. </summary>
    public DateTime? ContractDate { get; private set; }
    public long? CollectionNo { get; private set; }
    /// <summary> سعر المخزون. </summary>
    public int? StockRate { get; private set; }
    public bool? ProcessOutFlag { get; private set; }
    public bool? PointCalcTypeNo { get; private set; }
    /// <summary> عدد النقاط. </summary>
    public int? PointCount { get; private set; }
    /// <summary> إجمالي النقاط. </summary>
    public int? PointCountAll { get; private set; }
    /// <summary> قيمة استبدال النقاط. </summary>
    public int? PointReplaceAmount { get; private set; }
    /// <summary> عدد نقاط الاستبدال. </summary>
    public int? PointReplaceCount { get; private set; }
    public int? PointTypeNo { get; private set; }
    public long? MobileNo { get; private set; }
    public bool? ProcessMRPFlag { get; private set; }
    public bool? NotUseQuotationPromotion { get; private set; }
    public long? QuotationPromotionSer { get; private set; }
    public long? QuotationPromotionRecordNo { get; private set; }
    public long? QuotationPromotionNo { get; private set; }
    public bool? CalcTaxFreeQtyFlag { get; private set; }
    /// <summary> حد إضافي تأميني رئيسي. </summary>
    public int? InsuranceAddLimitMaster { get; private set; }
    /// <summary> تاريخ إضافة السطر (بالساعة). </summary>
    public DateTime? AddedDateClock { get; private set; }
    public short? ShowSystemType { get; private set; }
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
    public bool? PatientType { get; private set; }
    public long? AdmissionDocNo { get; private set; }
    public long? AdmissionDocSerial { get; private set; }
    /// <summary> رقم تسلسلي مؤقت. </summary>
    public int? DocMSq { get; private set; }
    public bool? CustomerAcceptType { get; private set; }
    public int? CustomerAcceptUserId { get; private set; }
    /// <summary> تاريخ قبول العميل. </summary>
    public DateTime? CustomerAcceptDate { get; private set; }
    /// <summary> وصف قبول العميل. </summary>
    public string? CustomerAcceptDesc { get; private set; }
    public bool? ProcessRequestAuto { get; private set; }
    public CurrencyExchangeRate CurrencyExchangeRate { get; private set; } // Navigation
    public Region Region { get; private set; } // Navigation
    public Customer Customer { get; private set; } // Navigation
    public ICollection<SalesOrderDetail> SalesOrderDetails { get; private set; } // Inverse Navigation
}