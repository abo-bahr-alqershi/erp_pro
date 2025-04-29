public class SalesQuotationDetail
{
    /// <summary> نوع عرض السعر </summary>
    public short QuotationType { get; private set; }
    /// <summary> رقم عرض السعر </summary>
    public long QuotationNo { get; private set; }
    /// <summary> الرقم التسلسلي للعرض </summary>
    public long QuotationSerial { get; private set; }
    /// <summary> كود الصنف </summary>
    public string ItemCode { get; private set; }
    /// <summary> كمية الصنف </summary>
    public int? ItemQty { get; private set; }
    /// <summary> وحدة الصنف </summary>
    public string ItemUnit { get; private set; }
    /// <summary> حجم العبوة </summary>
    public int PackSize { get; private set; }
    /// <summary> كمية العبوة </summary>
    public int? PackQty { get; private set; }
    /// <summary> سعر الصنف </summary>
    public decimal? ItemPrice { get; private set; }
    /// <summary> كود المستودع </summary>
    public long? WarehouseCode { get; private set; }
    /// <summary> نسبة الضريبة </summary>
    public int? VATPercent { get; private set; }
    /// <summary> مبلغ الضريبة </summary>
    public int? VATAmount { get; private set; }
    /// <summary> رقم السطر الداخلي </summary>
    public long? RecordNo { get; private set; }
    /// <summary> باركود الصنف </summary>
    public string? Barcode { get; private set; }
    /// <summary> استخدام مرفق للصنف </summary>
    public bool? UseAttachment { get; private set; }
    /// <summary> كمية مجانية </summary>
    public int? FreeQty { get; private set; }
    /// <summary> عدد المرفقات </summary>
    public long? ReceiveAttachment { get; private set; }
    /// <summary> طول الصنف </summary>
    public int? ItemLength { get; private set; }
    /// <summary> عرض الصنف </summary>
    public int? ItemWidth { get; private set; }
    /// <summary> ارتفاع الصنف </summary>
    public int? ItemHeight { get; private set; }
    /// <summary> رقم العنصر التسلسلي </summary>
    public int? ItemNumber { get; private set; }
    /// <summary> وحدة الوزن </summary>
    public string? WeightUnit { get; private set; }
    /// <summary> كمية الوزن </summary>
    public int? WeightQty { get; private set; }
    /// <summary> وصف الصنف </summary>
    public string? ItemDesc { get; private set; }
    /// <summary> نسبة الخصم </summary>
    public int? DiscountPercent { get; private set; }
    /// <summary> مبلغ الخصم التفصيلي </summary>
    public int? DiscountAmountDetail { get; private set; }
    /// <summary> نسبة خصم إضافية </summary>
    public int? DiscountPercent2 { get; private set; }
    /// <summary> مبلغ خصم إضافي </summary>
    public int? DiscountAmountDetail2 { get; private set; }
    /// <summary> نسبة خصم إضافية ثالثة </summary>
    public int? DiscountPercent3 { get; private set; }
    /// <summary> مبلغ خصم إضافي ثالث </summary>
    public int? DiscountAmountDetail3 { get; private set; }
    /// <summary> مبلغ خصم رئيسي </summary>
    public int? DiscountAmountMaster { get; private set; }
    /// <summary> مبلغ الخصم </summary>
    public int? DiscountAmount { get; private set; }
    /// <summary> مبلغ الخصم التفصيلي بعد الضريبة </summary>
    public int? DiscountAmountDetailVAT { get; private set; }
    /// <summary> مبلغ الخصم الرئيسي بعد الضريبة </summary>
    public int? DiscountAmountMasterVAT { get; private set; }
    /// <summary> مبلغ ضريبة الخصم التفصيلي بعد الضريبة </summary>
    public int? VATDiscountDetailVAT { get; private set; }
    /// <summary> مبلغ الضريبة بعد الخصم </summary>
    public int? VATAmountAfterDiscount { get; private set; }
    /// <summary> مبلغ الضريبة قبل الخصم </summary>
    public int? VATAmountBeforeDiscount { get; private set; }
    /// <summary> مبلغ ضريبة الخصم الرئيسي بعد الضريبة </summary>
    public int? VATDiscountMasterVAT { get; private set; }
    /// <summary> مبالغ أخرى للصنف </summary>
    public int? OtherAmount { get; private set; }
    /// <summary> سعر الصنف بعد الضريبة </summary>
    public int? ItemPriceVAT { get; private set; }
    /// <summary> نوع الفاتورة المتوقعة للصنف </summary>
    public int? SalesInvoiceType { get; private set; }
    /// <summary> حقل إضافي 1 </summary>
    public string? FieldDtl1 { get; private set; }
    /// <summary> حقل إضافي 2 </summary>
    public string? FieldDtl2 { get; private set; }
    /// <summary> حقل إضافي 3 </summary>
    public string? FieldDtl3 { get; private set; }
    /// <summary> علم الترحيل الخارجي </summary>
    public int? ExternalPost { get; private set; }
    /// <summary> تاريخ انتهاء الدفعة </summary>
    public DateTime? ExpireDate { get; private set; }
    /// <summary> رقم الدفعة/التشغيلة </summary>
    public string? BatchNo { get; private set; }
    /// <summary> رقم مرجعي خاص </summary>
    public int? ArgumentNo { get; private set; }
    /// <summary> تكلفة المخزون </summary>
    public int? StockCost { get; private set; }
    /// <summary> تم استخدام العنصر (1=نعم) </summary>
    public bool? UsedItem { get; private set; }
    /// <summary> تسلسل السطر بالمستند </summary>
    public long? DocSequence { get; private set; }
    /// <summary> رقم الشركة </summary>
    public short CompanyNo { get; private set; }
    /// <summary> رقم الفرع </summary>
    public int BranchNo { get; private set; }
    /// <summary> السنة المالية للفرع </summary>
    public short? BranchYear { get; private set; }
    /// <summary> مستخدم الفرع </summary>
    public short? BranchUser { get; private set; }
    /// <summary> عدد مرات التعديل </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> خصم على المبالغ الأخرى </summary>
    public int? OtherAmountDiscount { get; private set; }
    /// <summary> مبلغ الضريبة على مبالغ أخرى </summary>
    public int? VATAmountOther { get; private set; }
    /// <summary> مركز التكلفة </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> رقم المشروع </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> رقم النشاط </summary>
    public string? ActivityNo { get; private set; }
    /// <summary> خصم إضافي تفصيلي بعد الضريبة </summary>
    public int? DiscountAmountDetail2VAT { get; private set; }
    /// <summary> خصم إضافي ثالث تفصيلي بعد الضريبة </summary>
    public int? DiscountAmountDetail3VAT { get; private set; }
    /// <summary> ضريبة خصم إضافي تفصيلي بعد الضريبة </summary>
    public int? VATDiscountDetail2VAT { get; private set; }
    /// <summary> ضريبة خصم إضافي ثالث بعد الضريبة </summary>
    public int? VATDiscountDetail3VAT { get; private set; }
    /// <summary> حقل إضافي 4 </summary>
    public string? FieldDtl4 { get; private set; }
    /// <summary> حقل إضافي 5 </summary>
    public string? FieldDtl5 { get; private set; }
    /// <summary> حقل إضافي 6 </summary>
    public string? FieldDtl6 { get; private set; }
    /// <summary> حقل إضافي 7 </summary>
    public string? FieldDtl7 { get; private set; }
    /// <summary> حقل إضافي 8 </summary>
    public string? FieldDtl8 { get; private set; }
    /// <summary> حقل إضافي 9 </summary>
    public string? FieldDtl9 { get; private set; }
    /// <summary> حقل إضافي 10 </summary>
    public string? FieldDtl10 { get; private set; }
    /// <summary> رقم مستوى التسعير </summary>
    public short? LevelNo { get; private set; }
    /// <summary> رقم مستوى السعر للصنف </summary>
    public int? ItemPriceLevelNo { get; private set; }
    /// <summary> مبلغ إضافي للصنف </summary>
    public int? OtherAmountItem { get; private set; }
    /// <summary> رقم المستند المرجعي </summary>
    public long? DocNoRef { get; private set; }
    /// <summary> الرقم التسلسلي للمستند المرجعي </summary>
    public long? DocSerRef { get; private set; }
    /// <summary> نوع المستند المرجعي </summary>
    public int? DocTypeRef { get; private set; }
    /// <summary> نوع المجانية </summary>
    public bool? FreeType { get; private set; }
    public SalesQuotation SalesQuotation { get; private set; } // Navigation
}