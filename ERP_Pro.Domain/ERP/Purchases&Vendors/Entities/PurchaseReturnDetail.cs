public class PurchaseReturnDetail
{
    /// <summary> نوع مستند المرتجع </summary>
    public short ReturnBillDocType { get; private set; }
    /// <summary> رقم المرتجع </summary>
    public long ReturnBillNo { get; private set; }
    /// <summary> الرقم التسلسلي للمرتجع </summary>
    public long ReturnBillSerial { get; private set; }
    /// <summary> رقم الفاتورة المرتبطة </summary>
    public long? BillNo { get; private set; }
    /// <summary> نوع مستند الفاتورة المرتبطة </summary>
    public short? BillDocType { get; private set; }
    /// <summary> التسلسل للفاتورة المرتبطة </summary>
    public long? BillSerial { get; private set; }
    /// <summary> كود الصنف </summary>
    public string ItemCode { get; private set; }
    /// <summary> الكمية المرتجعة </summary>
    public int? ItemQty { get; private set; }
    /// <summary> وحدة الصنف </summary>
    public string ItemUnit { get; private set; }
    /// <summary> حجم العبوة </summary>
    public int PackSize { get; private set; }
    /// <summary> كمية العبوة </summary>
    public int PackQty { get; private set; }
    /// <summary> سعر الوحدة </summary>
    public int? ItemPrice { get; private set; }
    /// <summary> تكلفة المخزون </summary>
    public int? StockCost { get; private set; }
    /// <summary> كود المستودع </summary>
    public long? WarehouseCode { get; private set; }
    /// <summary> مركز التكلفة </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> رقم المشروع </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> رقم النشاط </summary>
    public string? ActivityNo { get; private set; }
    public string? VCode { get; private set; }
    public int? SrType { get; private set; }
    /// <summary> تاريخ انتهاء الصنف </summary>
    public DateTime ExpireDate { get; private set; }
    /// <summary> رقم التشغيلة/الدفعة </summary>
    public string BatchNo { get; private set; }
    /// <summary> كمية مجانية </summary>
    public int? FreeQty { get; private set; }
    /// <summary> عنصر خدمة (1=نعم) </summary>
    public bool? ServiceItem { get; private set; }
    /// <summary> نسبة الخصم </summary>
    public decimal? DiscountPercent { get; private set; }
    /// <summary> مبلغ الخصم الكلي </summary>
    public int? DiscountAmount { get; private set; }
    /// <summary> مبلغ الخصم الرئيسي </summary>
    public int? DiscountAmountMaster { get; private set; }
    /// <summary> مبلغ الخصم التفصيلي </summary>
    public int? DiscountAmountDetail { get; private set; }
    /// <summary> خصم تفصيلي بعد الضريبة </summary>
    public int? DiscountAmountDetailVAT { get; private set; }
    /// <summary> خصم رئيسي بعد الضريبة </summary>
    public int? DiscountAmountMasterVAT { get; private set; }
    /// <summary> ضريبة الخصم التفصيلي بعد الضريبة </summary>
    public int? VATDiscountDetailVAT { get; private set; }
    /// <summary> مبلغ الضريبة بعد الخصم </summary>
    public int? VATAmountAfterDiscount { get; private set; }
    /// <summary> مبلغ الضريبة قبل الخصم </summary>
    public int? VATAmountBeforeDiscount { get; private set; }
    /// <summary> ضريبة الخصم الرئيسي بعد الضريبة </summary>
    public int? VATDiscountMasterVAT { get; private set; }
    /// <summary> خصم بعد الضريبة </summary>
    public int? DiscountAmountAfterVAT { get; private set; }
    /// <summary> نسبة الضريبة </summary>
    public int? VATPercent { get; private set; }
    /// <summary> مبلغ الضريبة </summary>
    public int? VATAmount { get; private set; }
    /// <summary> مبالغ أخرى للصنف </summary>
    public int? OtherAmount { get; private set; }
    /// <summary> كمية مرتجعة </summary>
    public int? ReturnedQty { get; private set; }
    /// <summary> كمية مجانية مرتجعة </summary>
    public int? ReturnedFreeQty { get; private set; }
    /// <summary> استخدام التسلسل (1=نعم) </summary>
    public bool? UseSerialNo { get; private set; }
    /// <summary> الخصم بعد الضريبة الرئيسي </summary>
    public int? DiscountAfterVATMaster { get; private set; }
    /// <summary> رقم سطر مستلم (في حال الربط) </summary>
    public long? SIRecordNo { get; private set; }
    /// <summary> رقم السطر الداخلي </summary>
    public long RecordNo { get; private set; }
    /// <summary> رقم سطر مرجعي (عند الربط) </summary>
    public long? RecordNoRef { get; private set; }
    /// <summary> تسلسل السطر في المستند </summary>
    public long DocSequence { get; private set; }
    /// <summary> تسلسل سطر المستند المستلم </summary>
    public long? DocSequenceSI { get; private set; }
    /// <summary> وصف الصنف </summary>
    public string? ItemDesc { get; private set; }
    /// <summary> باركود الصنف </summary>
    public string? Barcode { get; private set; }
    /// <summary> تم الترحيل خارجيًا </summary>
    public int? ExternalPost { get; private set; }
    /// <summary> نوع المرتجع (تجميع/مفرد) </summary>
    public bool? ReturnBillPY { get; private set; }
    /// <summary> استخدام مرفق للصنف </summary>
    public bool? UseAttachment { get; private set; }
    /// <summary> عدد المرفقات للصنف </summary>
    public long? ReceiveAttachment { get; private set; }
    /// <summary> نسبة خصم إضافية ثانية </summary>
    public int? DiscountPercent2 { get; private set; }
    /// <summary> مبلغ خصم إضافي ثاني </summary>
    public int? DiscountAmountDetail2 { get; private set; }
    /// <summary> نسبة خصم إضافية ثالثة </summary>
    public int? DiscountPercent3 { get; private set; }
    /// <summary> مبلغ خصم إضافي ثالث </summary>
    public int? DiscountAmountDetail3 { get; private set; }
    /// <summary> سعر الصنف بعد الضريبة </summary>
    public int? ItemPriceVAT { get; private set; }
    /// <summary> طول الصنف </summary>
    public int? ItemLength { get; private set; }
    /// <summary> عرض الصنف </summary>
    public int? ItemWidth { get; private set; }
    /// <summary> ارتفاع الصنف </summary>
    public int? ItemHeight { get; private set; }
    /// <summary> رقم العنصر التسلسلي </summary>
    public int? ItemNumber { get; private set; }
    /// <summary> كود الترحيل </summary>
    public string? PostCode { get; private set; }
    /// <summary> وحدة الوزن </summary>
    public string? WeightUnit { get; private set; }
    /// <summary> كمية الوزن </summary>
    public int? WeightQty { get; private set; }
    /// <summary> حقل مرن 1 </summary>
    public string? FieldDtl1 { get; private set; }
    /// <summary> حقل مرن 2 </summary>
    public string? FieldDtl2 { get; private set; }
    /// <summary> حقل مرن 3 </summary>
    public string? FieldDtl3 { get; private set; }
    /// <summary> نسبة تحميل التأمين </summary>
    public int? InsuranceLoadPercent { get; private set; }
    /// <summary> مبلغ تحميل التأمين </summary>
    public int? InsuranceLoadAmount { get; private set; }
    /// <summary> حد إضافي للتأمين </summary>
    public int? InsuranceAddLimit { get; private set; }
    /// <summary> رقم الموظف </summary>
    public long? EmployeeNo { get; private set; }
    /// <summary> نوع المستند المرجعي </summary>
    public int? DocTypeRef { get; private set; }
    /// <summary> رقم المستند المرجعي </summary>
    public long? DocNoRef { get; private set; }
    /// <summary> تسلسل المستند المرجعي </summary>
    public int? DocSerRef { get; private set; }
    /// <summary> كود العميل الفرعي </summary>
    public string? SubCustomerCode { get; private set; }
    /// <summary> نسبة العمولة </summary>
    public int? CommissionPercent { get; private set; }
    /// <summary> مبلغ العمولة التفصيلية </summary>
    public int? CommissionAmountDetail { get; private set; }
    /// <summary> رقم مرجعي خاص </summary>
    public int? ArgumentNo { get; private set; }
    /// <summary> عنصر مستخدم (1=نعم) </summary>
    public bool? UsedItem { get; private set; }
    /// <summary> مبلغ الضريبة على المبالغ الأخرى </summary>
    public int? VATAmountOther { get; private set; }
    /// <summary> خصم إضافي رئيسي </summary>
    public int? AddDiscountAmountMaster { get; private set; }
    /// <summary> خصم إضافي تفصيلي </summary>
    public int? AddDiscountAmountDetail { get; private set; }
    /// <summary> خصم على المبالغ الأخرى </summary>
    public int? OtherAmountDiscount { get; private set; }
    /// <summary> رقم عرض سعر ترويجي </summary>
    public long? QuotationPromotionNo { get; private set; }
    /// <summary> تسلسل عرض سعر ترويجي </summary>
    public long? QuotationPromotionSer { get; private set; }
    /// <summary> رقم سطر عرض سعر ترويجي </summary>
    public long? QuotationPromotionRecordNo { get; private set; }
    /// <summary> رقم الشركة </summary>
    public short? CompanyNo { get; private set; }
    /// <summary> رقم الفرع </summary>
    public int BranchNo { get; private set; }
    /// <summary> السنة المالية للفرع </summary>
    public short? BranchYear { get; private set; }
    /// <summary> مستخدم الفرع </summary>
    public short? BranchUser { get; private set; }
    /// <summary> عدد مرات التحديث </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> خصم تفصيلي ثاني بعد الضريبة </summary>
    public int? DiscountAmountDetail2VAT { get; private set; }
    /// <summary> خصم تفصيلي ثالث بعد الضريبة </summary>
    public int? DiscountAmountDetail3VAT { get; private set; }
    /// <summary> ضريبة الخصم الثاني بعد الضريبة </summary>
    public int? VATDiscountDetail2VAT { get; private set; }
    /// <summary> ضريبة الخصم الثالث بعد الضريبة </summary>
    public int? VATDiscountDetail3VAT { get; private set; }
    /// <summary> كمية مرتجعة سنوية </summary>
    public int? ReturnedQtyYear { get; private set; }
    /// <summary> كمية مجانية مرتجعة سنوية </summary>
    public int? ReturnedFreeQtyYear { get; private set; }
    /// <summary> حد إضافي تأميني رئيسي </summary>
    public int? InsuranceAddLimitMaster { get; private set; }
    /// <summary> نوع المجانية (1=ترويجية/0=عادية) </summary>
    public bool? FreeType { get; private set; }
    public Project Project { get; private set; } // Navigation
    public PurchaseReturn PurchaseReturn { get; private set; } // Navigation
    public Warehouse Warehouse { get; private set; } // Navigation
}