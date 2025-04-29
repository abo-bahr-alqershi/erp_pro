public class PurchaseQuotation
{
    /// <summary> رقم عرض السعر الرئيسي </summary>
    public long? QuotationNo { get; private set; }
    /// <summary> الرقم التسلسلي للعرض </summary>
    public long? QuotationSerial { get; private set; }
    /// <summary> تاريخ إصدار عرض السعر </summary>
    public DateTime QuotationDate { get; private set; }
    /// <summary> رمز العملة </summary>
    public string CurrencyCode { get; private set; }
    /// <summary> رقم العملة </summary>
    public short CurrencyNo { get; private set; }
    /// <summary> كود المورد </summary>
    public string? VendorCode { get; private set; }
    /// <summary> اسم المورد </summary>
    public string? VendorName { get; private set; }
    /// <summary> مركز التكلفة </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> رقم المشروع </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> رقم النشاط </summary>
    public string? ActivityNo { get; private set; }
    /// <summary> وصف العرض/ملاحظات </summary>
    public string? Description { get; private set; }
    /// <summary> تمت المعالجة (1=نعم) </summary>
    public bool? Processed { get; private set; }
    /// <summary> معتمد (1=نعم) </summary>
    public bool? Approved { get; private set; }
    /// <summary> مستخدم الاعتماد </summary>
    public int? ApprovedUserId { get; private set; }
    /// <summary> تاريخ الاعتماد </summary>
    public DateTime? ApprovedDate { get; private set; }
    /// <summary> وصف الاعتماد </summary>
    public string? ApprovedDesc { get; private set; }
    /// <summary> رقم مرجعي إضافي </summary>
    public string? ReferenceNo { get; private set; }
    /// <summary> رقم المناقصة </summary>
    public string? TenderNo { get; private set; }
    /// <summary> تاريخ المناقصة </summary>
    public DateTime? TenderDate { get; private set; }
    /// <summary> تاريخ المرجع </summary>
    public DateTime? ReferenceDate { get; private set; }
    /// <summary> منفذ الشحن/المغادرة </summary>
    public string? PortOfDeparture { get; private set; }
    /// <summary> عدد الأيام المطلوبة للتنفيذ </summary>
    public int? RequiredDays { get; private set; }
    /// <summary> شروط الدفع </summary>
    public string? PaymentTerms { get; private set; }
    /// <summary> مبلغ الخصم </summary>
    public decimal? DiscountAmount { get; private set; }
    /// <summary> مبالغ أخرى (خدمات/مصاريف) </summary>
    public int? OtherAmount { get; private set; }
    /// <summary> بدون مبالغ أخرى (1=نعم) </summary>
    public bool? WithoutOtherAmount { get; private set; }
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
    /// <summary> خصم رئيسي </summary>
    public int? DiscountAmountMaster { get; private set; }
    /// <summary> خصم تفصيلي </summary>
    public int? DiscountAmountDetail { get; private set; }
    /// <summary> مبلغ الضريبة </summary>
    public int? VATAmount { get; private set; }
    /// <summary> استخدام الضريبة (1=نعم) </summary>
    public bool? UseVAT { get; private set; }
    /// <summary> تجديد تلقائي (1=نعم) </summary>
    public bool? AutoRenew { get; private set; }
    /// <summary> أولوية التقرير </summary>
    public long? ReportPriority { get; private set; }
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
    /// <summary> نوع التكلفة </summary>
    public string? CostType { get; private set; }
    /// <summary> تاريخ انتهاء عرض السعر </summary>
    public DateTime? QuotationExpireDate { get; private set; }
    /// <summary> علم الكمية المعفاة من الضريبة </summary>
    public bool? TaxFreeQtyFlag { get; private set; }
    /// <summary> مدة التوريد بالأيام </summary>
    public int? DeliveryTimeDays { get; private set; }
    public ICollection<PurchaseQuotationDetail> PurchaseQuotationDetails { get; private set; } // Inverse Navigation
}