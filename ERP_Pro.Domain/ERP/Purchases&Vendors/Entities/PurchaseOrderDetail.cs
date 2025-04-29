public class PurchaseOrderDetail
{
    /// <summary> نوع أمر الشراء </summary>
    public int PurchaseOrderType { get; private set; }
    /// <summary> رقم أمر الشراء </summary>
    public long PurchaseOrderNo { get; private set; }
    /// <summary> الرقم التسلسلي للأمر </summary>
    public long? PurchaseOrderSerial { get; private set; }
    /// <summary> كود الصنف </summary>
    public string ItemCode { get; private set; }
    /// <summary> الكمية المطلوبة </summary>
    public int? ItemQty { get; private set; }
    /// <summary> كمية مجانية </summary>
    public int? FreeQty { get; private set; }
    /// <summary> وحدة الصنف </summary>
    public string ItemUnit { get; private set; }
    /// <summary> حجم العبوة </summary>
    public int PackSize { get; private set; }
    /// <summary> كمية العبوة </summary>
    public int? PackQty { get; private set; }
    /// <summary> كود المستودع </summary>
    public long? WarehouseCode { get; private set; }
    /// <summary> نوع المستند المرجعي </summary>
    public int? DocTypeRef { get; private set; }
    /// <summary> رقم طلب الشراء المرجعي </summary>
    public long? PRNo { get; private set; }
    /// <summary> تسلسل طلب الشراء المرجعي </summary>
    public long? PRSerial { get; private set; }
    /// <summary> رقم عرض السعر المرجعي </summary>
    public long? QTNo { get; private set; }
    /// <summary> تسلسل عرض السعر المرجعي </summary>
    public long? QTSerial { get; private set; }
    /// <summary> سعر الصنف </summary>
    public decimal? ItemPrice { get; private set; }
    /// <summary> رقم السطر الداخلي </summary>
    public long? RecordNo { get; private set; }
    /// <summary> وصف الصنف </summary>
    public string? ItemDesc { get; private set; }
    /// <summary> باركود الصنف </summary>
    public string? Barcode { get; private set; }
    /// <summary> استخدام مرفق للصنف </summary>
    public bool? UseAttachment { get; private set; }
    /// <summary> عدد المرفقات للصنف </summary>
    public long? ReceiveAttachment { get; private set; }
    /// <summary> كمية فاتورة المورد </summary>
    public int? PIQty { get; private set; }
    /// <summary> كمية مجانية من المورد </summary>
    public int? PIFreeQty { get; private set; }
    /// <summary> الكمية المتاحة </summary>
    public int? AvailableQty { get; private set; }
    /// <summary> متوسط تكلفة الوحدة </summary>
    public int? ItemCwtAvg { get; private set; }
    /// <summary> آخر سعر شراء للصنف </summary>
    public int? LastIncomePrice { get; private set; }
    /// <summary> تسلسل السطر في المستند </summary>
    public long? DocSequence { get; private set; }
    /// <summary> تسلسل طلب الشراء المرجعي </summary>
    public long? DocSequencePRQ { get; private set; }
    /// <summary> ملغي (1=نعم) </summary>
    public bool? Canceled { get; private set; }
    /// <summary> تاريخ انتهاء الصنف </summary>
    public DateTime? ExpireDate { get; private set; }
    /// <summary> رقم التشغيلة/الدفعة </summary>
    public string? BatchNo { get; private set; }
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
    /// <summary> مبلغ الخصم </summary>
    public int? DiscountAmount { get; private set; }
    /// <summary> خصم رئيسي </summary>
    public int? DiscountAmountMaster { get; private set; }
    /// <summary> نسبة الخصم </summary>
    public decimal? DiscountPercent { get; private set; }
    /// <summary> مبلغ الخصم التفصيلي </summary>
    public int? DiscountAmountDetail { get; private set; }
    /// <summary> نسبة خصم إضافية </summary>
    public decimal? DiscountPercent2 { get; private set; }
    /// <summary> مبلغ خصم إضافي </summary>
    public int? DiscountAmountDetail2 { get; private set; }
    /// <summary> نسبة خصم إضافية ثالثة </summary>
    public decimal? DiscountPercent3 { get; private set; }
    /// <summary> مبلغ خصم إضافي ثالث </summary>
    public int? DiscountAmountDetail3 { get; private set; }
    /// <summary> حجم الوحدة </summary>
    public int? UnitSize { get; private set; }
    /// <summary> كمية الوحدات </summary>
    public int? UnitQty { get; private set; }
    /// <summary> كمية لم يتم فوترتها سابقًا </summary>
    public int? NotBillPreviousQty { get; private set; }
    /// <summary> كمية تم فوترتها سابقًا </summary>
    public int? BillPreviousQty { get; private set; }
    /// <summary> كمية الوزن </summary>
    public int? WeightQty { get; private set; }
    /// <summary> وحدة الوزن </summary>
    public string? WeightUnit { get; private set; }
    /// <summary> مركز التكلفة </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> رقم المشروع </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> رقم النشاط </summary>
    public string? ActivityNo { get; private set; }
    /// <summary> مبالغ أخرى للصنف </summary>
    public int? OtherAmount { get; private set; }
    /// <summary> نسبة الضريبة </summary>
    public decimal? VATPercent { get; private set; }
    /// <summary> مبلغ الضريبة </summary>
    public int? VATAmount { get; private set; }
    /// <summary> رقم مرجعي خاص </summary>
    public int? ArgumentNo { get; private set; }
    /// <summary> تاريخ التسليم للصنف </summary>
    public DateTime? DeliveryDate { get; private set; }
    /// <summary> رقم الشركة </summary>
    public short CompanyNo { get; private set; }
    /// <summary> رقم الفرع </summary>
    public int BranchNo { get; private set; }
    /// <summary> السنة المالية للفرع </summary>
    public short? BranchYear { get; private set; }
    /// <summary> مستخدم الفرع </summary>
    public short? BranchUser { get; private set; }
    /// <summary> وحدة التغليف </summary>
    public string? PackageUnit { get; private set; }
    /// <summary> حجم وحدة التغليف </summary>
    public long? PackageUnitSize { get; private set; }
    /// <summary> كمية التغليف </summary>
    public int? PackageQty { get; private set; }
    /// <summary> طول التغليف </summary>
    public int? PackageLength { get; private set; }
    /// <summary> عرض التغليف </summary>
    public int? PackageWidth { get; private set; }
    /// <summary> ارتفاع التغليف </summary>
    public int? PackageHeight { get; private set; }
    /// <summary> حجم التغليف </summary>
    public int? PackageSize { get; private set; }
    /// <summary> وزن التغليف </summary>
    public int? PackageWeight { get; private set; }
    /// <summary> رقم المستند المرجعي </summary>
    public long? DocNoRef { get; private set; }
    /// <summary> تسلسل المستند المرجعي </summary>
    public long? DocSerRef { get; private set; }
    /// <summary> تسلسل السطر المرجعي </summary>
    public long? DocSequenceRef { get; private set; }
    /// <summary> عدد مرات التحديث </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> رقم المشروع المرجعي </summary>
    public string? ProjectNoRef { get; private set; }
    /// <summary> سعر البيع للصنف </summary>
    public int? SalePrice { get; private set; }
    /// <summary> تسلسل مؤقت للسطر </summary>
    public int? DocSeqTmp { get; private set; }
    /// <summary> حقل مرن 1 </summary>
    public string? FieldDtl1 { get; private set; }
    /// <summary> حقل مرن 2 </summary>
    public string? FieldDtl2 { get; private set; }
    /// <summary> حقل مرن 3 </summary>
    public string? FieldDtl3 { get; private set; }
    /// <summary> حقل مرن 4 </summary>
    public string? FieldDtl4 { get; private set; }
    /// <summary> حقل مرن 5 </summary>
    public string? FieldDtl5 { get; private set; }
    /// <summary> حقل مرن 6 </summary>
    public string? FieldDtl6 { get; private set; }
    /// <summary> حقل مرن 7 </summary>
    public string? FieldDtl7 { get; private set; }
    /// <summary> حقل مرن 8 </summary>
    public string? FieldDtl8 { get; private set; }
    /// <summary> حقل مرن 9 </summary>
    public string? FieldDtl9 { get; private set; }
    /// <summary> حقل مرن 10 </summary>
    public string? FieldDtl10 { get; private set; }
    public PurchaseOrder PurchaseOrder { get; private set; } // Navigation
    public Warehouse Warehouse { get; private set; } // Navigation
}