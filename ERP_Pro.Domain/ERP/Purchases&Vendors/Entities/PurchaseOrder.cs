public class PurchaseOrder
{
    /// <summary> نوع أمر الشراء (عادي/مباشر/خدمات) </summary>
    public int PurchaseOrderType { get; private set; }
    /// <summary> رقم أمر الشراء الرئيسي </summary>
    public long? PurchaseOrderNo { get; private set; }
    /// <summary> الرقم التسلسلي لأمر الشراء </summary>
    public long? PurchaseOrderSerial { get; private set; }
    /// <summary> تاريخ إصدار أمر الشراء </summary>
    public DateTime PurchaseOrderDate { get; private set; }
    /// <summary> كود المورد </summary>
    public string? VendorCode { get; private set; }
    /// <summary> اسم المورد </summary>
    public string? VendorName { get; private set; }
    /// <summary> رمز العملة </summary>
    public string CurrencyCode { get; private set; }
    /// <summary> مركز التكلفة </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> رقم المشروع المرتبط </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> رقم النشاط المرتبط </summary>
    public string? ActivityNo { get; private set; }
    /// <summary> تمت المعالجة (1=نعم) </summary>
    public bool? Processed { get; private set; }
    /// <summary> ملاحظات/وصف للأمر </summary>
    public string? Description { get; private set; }
    /// <summary> رقم مرجعي إضافي </summary>
    public string? ReferenceNo { get; private set; }
    /// <summary> أمر شراء جزئي (1=نعم) </summary>
    public bool? PartialOrder { get; private set; }
    /// <summary> مغلق (1=نعم) </summary>
    public bool? Closed { get; private set; }
    /// <summary> مبلغ الخصم الكلي </summary>
    public decimal? DiscountAmount { get; private set; }
    /// <summary> يتطلب فحص (1=نعم) </summary>
    public bool? Inspection { get; private set; }
    /// <summary> رقم الإدخال </summary>
    public long? EntryNo { get; private set; }
    /// <summary> معطل (1=نعم) </summary>
    public bool? Inactive { get; private set; }
    /// <summary> المستخدم الذي عطل السطر </summary>
    public int? InactiveUserId { get; private set; }
    /// <summary> تاريخ التعطيل </summary>
    public DateTime? InactiveDate { get; private set; }
    /// <summary> سبب التعطيل </summary>
    public string? InactiveReason { get; private set; }
    /// <summary> تم الاعتماد (1=معتمد) </summary>
    public bool? Approved { get; private set; }
    /// <summary> المستخدم الذي اعتمد الأمر </summary>
    public int? ApprovedUserId { get; private set; }
    /// <summary> تاريخ الاعتماد </summary>
    public DateTime? ApprovedDate { get; private set; }
    /// <summary> وصف الاعتماد </summary>
    public string? ApprovedDesc { get; private set; }
    /// <summary> سبب إضافي للتعطيل </summary>
    public string? InactiveReasonExtra { get; private set; }
    /// <summary> نوع الشراء </summary>
    public bool? PurchaseType { get; private set; }
    /// <summary> شروط التأمين </summary>
    public string? InsuranceTerms { get; private set; }
    /// <summary> رقم التأمين </summary>
    public string? InsuranceNo { get; private set; }
    /// <summary> شركة التأمين </summary>
    public string? InsuranceCompany { get; private set; }
    /// <summary> تاريخ التأمين </summary>
    public DateTime? InsuranceDate { get; private set; }
    /// <summary> دون مبالغ أخرى (1=نعم) </summary>
    public bool? WithoutOtherAmount { get; private set; }
    /// <summary> تاريخ التسليم </summary>
    public DateTime? DeliveryDate { get; private set; }
    /// <summary> مكان التسليم </summary>
    public string? PlaceDelivery { get; private set; }
    /// <summary> شروط الدفع </summary>
    public string? PaymentTerms { get; private set; }
    /// <summary> طريقة الشحن </summary>
    public string? ModeDispatch { get; private set; }
    /// <summary> عملة الشحن </summary>
    public string? FreightCurrency { get; private set; }
    /// <summary> شخص التواصل </summary>
    public string? ContactPerson { get; private set; }
    /// <summary> يتطلب مراجعة كمية </summary>
    public bool? NeedCheckQty { get; private set; }
    /// <summary> رقم فاتورة المورد </summary>
    public string? VendorPINo { get; private set; }
    /// <summary> تاريخ الاستلام </summary>
    public DateTime? ReceiveDate { get; private set; }
    /// <summary> نوع مستند الأمر </summary>
    public int? PurchaseOrderDocType { get; private set; }
    /// <summary> وصف شروط التأمين </summary>
    public string? InsuranceTermsDesc { get; private set; }
    /// <summary> خصم رئيسي </summary>
    public int? DiscountAmountMaster { get; private set; }
    /// <summary> خصم تفصيلي </summary>
    public int? DiscountAmountDetail { get; private set; }
    /// <summary> تم المراجعة (1=نعم) </summary>
    public bool? Checked { get; private set; }
    /// <summary> مقفل (1=نعم) </summary>
    public bool? Locked { get; private set; }
    /// <summary> رقم فاتورة المورد </summary>
    public string? VendorBillNo { get; private set; }
    /// <summary> تاريخ فاتورة المورد </summary>
    public DateTime? VendorBillDate { get; private set; }
    /// <summary> نوع احتساب الضريبة في السعر </summary>
    public int? VATPriceType { get; private set; }
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
    /// <summary> رقم العقد </summary>
    public string? ContractNo { get; private set; }
    /// <summary> تسلسل العقد </summary>
    public string? ContractSer { get; private set; }
    /// <summary> فاتورة خدمات (1=نعم) </summary>
    public bool? ServiceBill { get; private set; }
    /// <summary> مخصص إلى مستخدم </summary>
    public int? AssignToUserId { get; private set; }
    /// <summary> مستخدم التخصيص </summary>
    public int? AssignUserId { get; private set; }
    /// <summary> تاريخ التخصيص </summary>
    public DateTime? AssignDate { get; private set; }
    /// <summary> استخدام الضريبة (1=نعم) </summary>
    public bool? UseVAT { get; private set; }
    /// <summary> مطلوب بيانات الشحن </summary>
    public bool? RequiredFreightData { get; private set; }
    /// <summary> مبالغ أخرى </summary>
    public int? OtherAmount { get; private set; }
    /// <summary> مبلغ الضريبة الكلي </summary>
    public int? VATAmount { get; private set; }
    /// <summary> رقم الحاوية </summary>
    public long? ContainerNo { get; private set; }
    /// <summary> تاريخ آخر شحن </summary>
    public DateTime? FreightLastDate { get; private set; }
    /// <summary> نوع التكلفة </summary>
    public int? CostingTypeNo { get; private set; }
    /// <summary> منفذ الشحن </summary>
    public string? PortOfFreight { get; private set; }
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
    /// <summary> رقم الشركة </summary>
    public short CompanyNo { get; private set; }
    /// <summary> رقم الفرع </summary>
    public int BranchNo { get; private set; }
    /// <summary> السنة المالية للفرع </summary>
    public short? BranchYear { get; private set; }
    /// <summary> مستخدم الفرع </summary>
    public short? BranchUser { get; private set; }
    /// <summary> نوع احتساب الضريبة </summary>
    public int? VATTypeNo { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    /// <summary> مستوى السعر </summary>
    public short? LevelNoPrice { get; private set; }
    /// <summary> الشركة المسؤولة عن الشراء </summary>
    public string? PurchaseCompany { get; private set; }
    /// <summary> علم الكمية المعفاة من الضريبة </summary>
    public bool? TaxFreeQtyFlag { get; private set; }
    /// <summary> رقم تسلسلي مؤقت </summary>
    public int? DocMSq { get; private set; }
    /// <summary> تاريخ انتهاء صلاحية الأمر </summary>
    public DateTime? PurchaseOrderExpireDate { get; private set; }
    /// <summary> رقم مناقصة الشراء </summary>
    public string? PurchaseTenderNo { get; private set; }
    /// <summary> سعر صرف العملة </summary>
    public int? CurrencyRate { get; private set; }
    /// <summary> كود مسؤول الشراء </summary>
    public string? PurchaseManagerCode { get; private set; }
    public CurrencyExchangeRate CurrencyExchangeRate { get; private set; } // Navigation
    public Project Project { get; private set; } // Navigation
    public ICollection<PurchaseOrderDetail> PurchaseOrderDetails { get; private set; } // Inverse Navigation
}