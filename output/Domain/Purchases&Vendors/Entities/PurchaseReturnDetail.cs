public class PurchaseReturnDetail
{
    public short ReturnBillDocType { get; private set; }
    public long ReturnBillNo { get; private set; }
    public long ReturnBillSerial { get; private set; }
    public long? BillNo { get; private set; }
    public short? BillDocType { get; private set; }
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
    public bool? ServiceItem { get; private set; }
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
    public bool? UseSerialNo { get; private set; }
    /// <summary> الخصم بعد الضريبة الرئيسي </summary>
    public int? DiscountAfterVATMaster { get; private set; }
    public long? SIRecordNo { get; private set; }
    public long RecordNo { get; private set; }
    public long? RecordNoRef { get; private set; }
    public long DocSequence { get; private set; }
    public long? DocSequenceSI { get; private set; }
    /// <summary> وصف الصنف </summary>
    public string? ItemDesc { get; private set; }
    /// <summary> باركود الصنف </summary>
    public string? Barcode { get; private set; }
    public int? ExternalPost { get; private set; }
    public bool? ReturnBillPY { get; private set; }
    public bool? UseAttachment { get; private set; }
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
    public long? EmployeeNo { get; private set; }
    public int? DocTypeRef { get; private set; }
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
    public bool? UsedItem { get; private set; }
    /// <summary> مبلغ الضريبة على المبالغ الأخرى </summary>
    public int? VATAmountOther { get; private set; }
    /// <summary> خصم إضافي رئيسي </summary>
    public int? AddDiscountAmountMaster { get; private set; }
    /// <summary> خصم إضافي تفصيلي </summary>
    public int? AddDiscountAmountDetail { get; private set; }
    /// <summary> خصم على المبالغ الأخرى </summary>
    public int? OtherAmountDiscount { get; private set; }
    public long? QuotationPromotionNo { get; private set; }
    public long? QuotationPromotionSer { get; private set; }
    public long? QuotationPromotionRecordNo { get; private set; }
    public short? CompanyNo { get; private set; }
    public int BranchNo { get; private set; }
    public short? BranchYear { get; private set; }
    public short? BranchUser { get; private set; }
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
    public bool? FreeType { get; private set; }
    public Project Project { get; private set; } // Navigation
    public PurchaseReturn PurchaseReturn { get; private set; } // Navigation
    public Warehouse Warehouse { get; private set; } // Navigation
}