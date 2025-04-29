public class SalesQuotation
{
    public short QuotationType { get; private set; }
    public long? QuotationNo { get; private set; }
    public long? QuotationSerial { get; private set; }
    /// <summary> تاريخ إصدار عرض السعر </summary>
    public DateTime QuotationDate { get; private set; }
    /// <summary> رمز العملة </summary>
    public string? CurrencyCode { get; private set; }
    /// <summary> كود العميل </summary>
    public string? CustomerCode { get; private set; }
    /// <summary> اسم العميل </summary>
    public string? CustomerName { get; private set; }
    /// <summary> مركز التكلفة </summary>
    public string? CostCenterCode { get; private set; }
    public long? WarehouseCode { get; private set; }
    /// <summary> رقم المشروع </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> رقم النشاط </summary>
    public string? ActivityNo { get; private set; }
    /// <summary> ملاحظات/وصف العرض </summary>
    public string? Description { get; private set; }
    /// <summary> رقم مناقصة/مرجع للعطاء </summary>
    public string? QuotationTender { get; private set; }
    /// <summary> تاريخ المناقصة </summary>
    public DateTime? QuotationTenderDate { get; private set; }
    /// <summary> رقم مرجعي إضافي </summary>
    public string? ReferenceNo { get; private set; }
    /// <summary> تاريخ المرجع </summary>
    public DateTime? ReferenceDate { get; private set; }
    /// <summary> منفذ الشحن/المغادرة </summary>
    public string? PortOfDeparture { get; private set; }
    public int? RequiredDays { get; private set; }
    /// <summary> شروط الدفع </summary>
    public string? PaymentTerms { get; private set; }
    /// <summary> مبلغ الخصم </summary>
    public int? DiscountAmount { get; private set; }
    public bool? Processed { get; private set; }
    public bool? Approved { get; private set; }
    /// <summary> تاريخ الاعتماد </summary>
    public DateTime? ApprovedDate { get; private set; }
    /// <summary> وصف الاعتماد </summary>
    public string? ApprovedDesc { get; private set; }
    public int? ApprovedUserId { get; private set; }
    /// <summary> مبالغ أخرى (مصاريف/خدمات) </summary>
    public int? OtherAmount { get; private set; }
    public int? SalesInvoiceType { get; private set; }
    /// <summary> إجمالي قيمة العرض </summary>
    public int? QuotationAmount { get; private set; }
    public bool? Inactive { get; private set; }
    /// <summary> سبب التعطيل </summary>
    public string? InactiveReason { get; private set; }
    /// <summary> تاريخ التعطيل </summary>
    public DateTime? InactiveDate { get; private set; }
    public int? InactiveUserId { get; private set; }
    public int? ExternalPost { get; private set; }
    /// <summary> نوع التكلفة </summary>
    public string? CostType { get; private set; }
    /// <summary> كود المندوب </summary>
    public string? SalesRepCode { get; private set; }
    public bool? Export { get; private set; }
    /// <summary> تاريخ انتهاء العرض </summary>
    public DateTime? QuotationExpireDate { get; private set; }
    /// <summary> سعر صرف العملة </summary>
    public int? CurrencyRate { get; private set; }
    /// <summary> تاريخ استحقاق الشيك </summary>
    public DateTime? ChequeDueDate { get; private set; }
    /// <summary> خصم رئيسي </summary>
    public int? DiscountAmountMaster { get; private set; }
    /// <summary> خصم تفصيلي </summary>
    public int? DiscountAmountDetail { get; private set; }
    /// <summary> خصم رئيسي بعد الضريبة </summary>
    public int? DiscountAmountMasterVAT { get; private set; }
    /// <summary> ضريبة الخصم الرئيسي </summary>
    public int? VATDiscountMaster { get; private set; }
    /// <summary> مبلغ الضريبة </summary>
    public int? VATAmount { get; private set; }
    public short? QuotationDocType { get; private set; }
    /// <summary> تاريخ استحقاق العرض </summary>
    public DateTime? QuotationDueDate { get; private set; }
    public bool? CustomerAcceptType { get; private set; }
    /// <summary> تاريخ موافقة العميل </summary>
    public DateTime? CustomerAcceptDate { get; private set; }
    /// <summary> وصف موافقة العميل </summary>
    public string? CustomerAcceptDesc { get; private set; }
    public int? TaxTypeNo { get; private set; }
    /// <summary> حقل إضافي مرن 1 </summary>
    public string? Field1 { get; private set; }
    /// <summary> حقل إضافي مرن 2 </summary>
    public string? Field2 { get; private set; }
    /// <summary> حقل إضافي مرن 3 </summary>
    public string? Field3 { get; private set; }
    /// <summary> حقل إضافي مرن 4 </summary>
    public string? Field4 { get; private set; }
    /// <summary> حقل إضافي مرن 5 </summary>
    public string? Field5 { get; private set; }
    /// <summary> حقل إضافي مرن 6 </summary>
    public string? Field6 { get; private set; }
    /// <summary> حقل إضافي مرن 7 </summary>
    public string? Field7 { get; private set; }
    /// <summary> حقل إضافي مرن 8 </summary>
    public string? Field8 { get; private set; }
    /// <summary> حقل إضافي مرن 9 </summary>
    public string? Field9 { get; private set; }
    /// <summary> حقل إضافي مرن 10 </summary>
    public string? Field10 { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    public int? AddedUserId { get; private set; }
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public long? UpdateCount { get; private set; }
    public long? ReportPriority { get; private set; }
    public short CompanyNo { get; private set; }
    public int BranchNo { get; private set; }
    public short? BranchYear { get; private set; }
    public short? BranchUser { get; private set; }
    /// <summary> الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    /// <summary> مبلغ الضريبة على المبالغ الأخرى </summary>
    public int? VATAmountOther { get; private set; }
    /// <summary> رقم تسلسلي خارجي </summary>
    public string? DocSerExternal { get; private set; }
    public bool? VATPriceType { get; private set; }
    public bool? CalcTaxFreeQtyFlag { get; private set; }
    /// <summary> تاريخ الإضافة (بالساعة) </summary>
    public DateTime? AddedDateClock { get; private set; }
    /// <summary> رقم دفعة العقد </summary>
    public int? ContractBatchNo { get; private set; }
    /// <summary> تاريخ العقد </summary>
    public DateTime? ContractDate { get; private set; }
    /// <summary> رقم العقد </summary>
    public string? ContractNo { get; private set; }
    /// <summary> تاريخ التسليم للعميل </summary>
    public DateTime? DeliveryDate { get; private set; }
    public Customer Customer { get; private set; } // Navigation
    public ICollection<SalesQuotationDetail> SalesQuotationDetails { get; private set; } // Inverse Navigation
}