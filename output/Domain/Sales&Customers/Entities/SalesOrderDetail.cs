public class SalesOrderDetail
{
    public int OrderType { get; private set; }
    public long OrderNo { get; private set; }
    public long? OrderSerial { get; private set; }
    /// <summary> كود الصنف. </summary>
    public string ItemCode { get; private set; }
    /// <summary> كمية الصنف. </summary>
    public int? ItemQty { get; private set; }
    /// <summary> كمية مجانية. </summary>
    public int? FreeQty { get; private set; }
    /// <summary> وحدة الصنف. </summary>
    public string ItemUnit { get; private set; }
    /// <summary> حجم العبوة. </summary>
    public int PackSize { get; private set; }
    /// <summary> كمية العبوة. </summary>
    public int? PackQty { get; private set; }
    /// <summary> سعر الصنف. </summary>
    public int? ItemPrice { get; private set; }
    /// <summary> تاريخ الحجز. </summary>
    public DateTime? ReservationDate { get; private set; }
    /// <summary> كمية الحجز. </summary>
    public int? ReservationQty { get; private set; }
    public long? WarehouseCode { get; private set; }
    public bool? Reserved { get; private set; }
    /// <summary> رقم السطر الداخلي. </summary>
    public int? RecordNo { get; private set; }
    /// <summary> باركود الصنف. </summary>
    public string? Barcode { get; private set; }
    public bool? UseAttachment { get; private set; }
    public long? ReceiveAttachment { get; private set; }
    /// <summary> وصف الصنف. </summary>
    public string? ItemDesc { get; private set; }
    public int? ExternalPost { get; private set; }
    public bool? Canceled { get; private set; }
    /// <summary> تاريخ انتهاء الصنف. </summary>
    public DateTime? ExpireDate { get; private set; }
    /// <summary> رقم الدفعة/التشغيلة. </summary>
    public string? BatchNo { get; private set; }
    /// <summary> نسبة الضريبة. </summary>
    public int? VATPercent { get; private set; }
    /// <summary> مبلغ الضريبة. </summary>
    public int? VATAmount { get; private set; }
    /// <summary> طول الصنف. </summary>
    public int? ItemLength { get; private set; }
    /// <summary> عرض الصنف. </summary>
    public int? ItemWidth { get; private set; }
    /// <summary> ارتفاع الصنف. </summary>
    public int? ItemHeight { get; private set; }
    /// <summary> رقم العنصر التسلسلي. </summary>
    public int? ItemNumber { get; private set; }
    /// <summary> وحدة الوزن. </summary>
    public string? WeightUnit { get; private set; }
    /// <summary> كمية الوزن. </summary>
    public int? WeightQty { get; private set; }
    /// <summary> مبلغ الخصم. </summary>
    public int? DiscountAmount { get; private set; }
    /// <summary> خصم رئيسي. </summary>
    public int? DiscountAmountMaster { get; private set; }
    /// <summary> نسبة الخصم. </summary>
    public int? DiscountPercent { get; private set; }
    /// <summary> مبلغ الخصم التفصيلي. </summary>
    public int? DiscountAmountDetail { get; private set; }
    /// <summary> نسبة خصم إضافية. </summary>
    public int? DiscountPercent2 { get; private set; }
    /// <summary> مبلغ خصم إضافي. </summary>
    public int? DiscountAmountDetail2 { get; private set; }
    /// <summary> نسبة خصم إضافية ثالثة. </summary>
    public int? DiscountPercent3 { get; private set; }
    /// <summary> مبلغ خصم إضافي ثالث. </summary>
    public int? DiscountAmountDetail3 { get; private set; }
    /// <summary> مبلغ الخصم التفصيلي بعد الضريبة. </summary>
    public int? DiscountAmountDetailVAT { get; private set; }
    /// <summary> مبلغ الخصم الرئيسي بعد الضريبة. </summary>
    public int? DiscountAmountMasterVAT { get; private set; }
    /// <summary> ضريبة الخصم التفصيلي بعد الضريبة. </summary>
    public int? VATDiscountDetailVAT { get; private set; }
    /// <summary> مبلغ الضريبة بعد الخصم. </summary>
    public int? VATAmountAfterDiscount { get; private set; }
    /// <summary> مبلغ الضريبة قبل الخصم. </summary>
    public int? VATAmountBeforeDiscount { get; private set; }
    /// <summary> ضريبة الخصم الرئيسي بعد الضريبة. </summary>
    public int? VATDiscountMasterVAT { get; private set; }
    /// <summary> تسلسل المستند. </summary>
    public int? DocSeq { get; private set; }
    public long? EmployeeNo { get; private set; }
    /// <summary> كود العميل الفرعي. </summary>
    public string? SubCustomerCode { get; private set; }
    public string? FieldDtl1 { get; private set; }
    public string? FieldDtl2 { get; private set; }
    public string? FieldDtl3 { get; private set; }
    /// <summary> وحدة التغليف. </summary>
    public string? PackageUnit { get; private set; }
    public long? PackageUnitSize { get; private set; }
    /// <summary> كمية التغليف. </summary>
    public int? PackageQty { get; private set; }
    /// <summary> طول التغليف. </summary>
    public int? PackageLength { get; private set; }
    /// <summary> عرض التغليف. </summary>
    public int? PackageWidth { get; private set; }
    /// <summary> ارتفاع التغليف. </summary>
    public int? PackageHeight { get; private set; }
    /// <summary> حجم التغليف. </summary>
    public int? PackageSize { get; private set; }
    /// <summary> وزن التغليف. </summary>
    public int? PackageWeight { get; private set; }
    public int? SalesInvoiceType { get; private set; }
    /// <summary> مبالغ أخرى. </summary>
    public int? OtherAmount { get; private set; }
    /// <summary> نسبة تحميل التأمين. </summary>
    public int? InsuranceLoadPercent { get; private set; }
    /// <summary> مبلغ تحميل التأمين. </summary>
    public int? InsuranceLoadAmount { get; private set; }
    /// <summary> حد إضافي تأميني. </summary>
    public int? InsuranceAddLimit { get; private set; }
    /// <summary> كود الموافقة التأمينية. </summary>
    public string? InsuranceApprovedCode { get; private set; }
    /// <summary> سعر الصنف بعد الضريبة. </summary>
    public int? ItemPriceVAT { get; private set; }
    /// <summary> سعر الوحدة المقاسة. </summary>
    public int? MeasurePrice { get; private set; }
    public int? DocTypeRef { get; private set; }
    public long? DocNoRef { get; private set; }
    public long? DocSerRef { get; private set; }
    public long? DocSequenceRef { get; private set; }
    /// <summary> مركز التكلفة. </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> تكلفة المخزون. </summary>
    public int? StockCost { get; private set; }
    public bool? UsedItem { get; private set; }
    public short CompanyNo { get; private set; }
    public int BranchNo { get; private set; }
    public short? BranchYear { get; private set; }
    public short? BranchUser { get; private set; }
    /// <summary> رقم مرجعي خاص. </summary>
    public int? ArgumentNo { get; private set; }
    public long? UpdateCount { get; private set; }
    /// <summary> خصم على المبالغ الأخرى. </summary>
    public int? OtherAmountDiscount { get; private set; }
    /// <summary> ضريبة مبالغ أخرى. </summary>
    public int? VATAmountOther { get; private set; }
    /// <summary> من وقت (زمني). </summary>
    public string? FromTime { get; private set; }
    /// <summary> إلى وقت (زمني). </summary>
    public string? ToTime { get; private set; }
    /// <summary> رقم المشروع. </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> رقم النشاط. </summary>
    public string? ActivityNo { get; private set; }
    /// <summary> مبلغ الخصم بعد الضريبة. </summary>
    public int? DiscountAmountAfterVAT { get; private set; }
    /// <summary> مبلغ خصم إضافي تفصيلي بعد الضريبة. </summary>
    public int? DiscountAmountDetail2VAT { get; private set; }
    /// <summary> مبلغ خصم إضافي ثالث بعد الضريبة. </summary>
    public int? DiscountAmountDetail3VAT { get; private set; }
    /// <summary> ضريبة خصم إضافي تفصيلي بعد الضريبة. </summary>
    public int? VATDiscountDetail2VAT { get; private set; }
    /// <summary> ضريبة خصم إضافي ثالث بعد الضريبة. </summary>
    public int? VATDiscountDetail3VAT { get; private set; }
    public long? PurchaseOrderNo { get; private set; }
    /// <summary> رقم تسلسلي لأمر الشراء. </summary>
    public int? PurchaseOrderSer { get; private set; }
    public string? FieldDtl4 { get; private set; }
    public string? FieldDtl5 { get; private set; }
    public string? FieldDtl6 { get; private set; }
    public string? FieldDtl7 { get; private set; }
    public string? FieldDtl8 { get; private set; }
    public string? FieldDtl9 { get; private set; }
    public string? FieldDtl10 { get; private set; }
    public short? LevelNo { get; private set; }
    /// <summary> رقم مستوى السعر. </summary>
    public int? ItemPriceLevelNo { get; private set; }
    public short? BillDocType { get; private set; }
    /// <summary> نسبة خصم عرض سعر ترويجي. </summary>
    public int? DiscountPercentQuotationPromotion { get; private set; }
    /// <summary> خصم عرض سعر ترويجي بعد الضريبة. </summary>
    public int? DiscountAmountDetailQuotationPromotionVAT { get; private set; }
    /// <summary> مبلغ خصم عرض سعر ترويجي. </summary>
    public int? DiscountAmountDetailQuotationPromotion { get; private set; }
    /// <summary> تسلسل مؤقت للسطر. </summary>
    public int? DocSeqTmp { get; private set; }
    public int? PromotionGroupNo { get; private set; }
    public long? QuotationPromotionSer { get; private set; }
    public long? QuotationPromotionRecordNo { get; private set; }
    public long? QuotationPromotionNo { get; private set; }
    /// <summary> مبلغ إضافي للصنف. </summary>
    public int? OtherAmountItem { get; private set; }
    /// <summary> حد إضافي تأميني رئيسي. </summary>
    public int? InsuranceAddLimitMaster { get; private set; }
    public bool? FreeType { get; private set; }
    public SalesOrder SalesOrder { get; private set; } // Navigation
}