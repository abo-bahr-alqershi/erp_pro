public class ItemMovement
{
    public int DocType { get; private set; }
    public int? BillDocType { get; private set; }
    public long DocNo { get; private set; }
    /// <summary> كود الصنف. </summary>
    public string ItemCode { get; private set; }
    /// <summary> الكمية المنقولة أو المدخلة أو المخرجة. </summary>
    public int? ItemQty { get; private set; }
    /// <summary> كمية مجانية ضمن الحركة. </summary>
    public int? FreeQty { get; private set; }
    /// <summary> وحدة الصنف. </summary>
    public string ItemUnit { get; private set; }
    /// <summary> حجم العبوة. </summary>
    public int PackSize { get; private set; }
    /// <summary> كمية العبوة. </summary>
    public int? PackQty { get; private set; }
    /// <summary> كمية مجانية جزئية. </summary>
    public int? PartialFreeQty { get; private set; }
    /// <summary> تاريخ الحركة. </summary>
    public DateTime ItemDate { get; private set; }
    /// <summary> تكلفة الصنف. </summary>
    public int? ItemCost { get; private set; }
    public long WarehouseCode { get; private set; }
    public long? WarehouseGroupCode { get; private set; }
    /// <summary> تكلفة المخزون. </summary>
    public int? StockCost { get; private set; }
    /// <summary> مبلغ ضريبة القيمة المضافة. </summary>
    public int? VatAmount { get; private set; }
    /// <summary> مبلغ الخصم على الحركة. </summary>
    public int? DiscountAmount { get; private set; }
    /// <summary> رمز العملة. </summary>
    public string? CurrencyCode { get; private set; }
    /// <summary> سعر الصرف. </summary>
    public int? AccountRate { get; private set; }
    /// <summary> سعر المخزون. </summary>
    public int? StockRate { get; private set; }
    /// <summary> مركز التكلفة. </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> رقم المشروع. </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> رقم النشاط. </summary>
    public string? ActivityNo { get; private set; }
    /// <summary> رمز تفاصيل الحساب. </summary>
    public string? AccountDtlCode { get; private set; }
    public short? AccountDtlType { get; private set; }
    /// <summary> كود العميل. </summary>
    public string? CustomerCode { get; private set; }
    /// <summary> كود المورد. </summary>
    public string? VendorCode { get; private set; }
    /// <summary> وصف الحركة. </summary>
    public string? Description { get; private set; }
    public long? GRNo { get; private set; }
    /// <summary> تاريخ انتهاء الدفعة. </summary>
    public DateTime ExpireDate { get; private set; }
    /// <summary> رقم التشغيلة/الدفعة. </summary>
    public string BatchNo { get; private set; }
    public long? RecordNo { get; private set; }
    /// <summary> رقم تسلسلي إضافي للعنصر. </summary>
    public int? Serial { get; private set; }
    /// <summary> رقم مرجعي إضافي. </summary>
    public string? RefNo { get; private set; }
    public long DocSerial { get; private set; }
    public long? OutNo { get; private set; }
    public long? OutGRSerial { get; private set; }
    public long? DocSequence { get; private set; }
    /// <summary> الباركود المستخدم في الحركة. </summary>
    public string? Barcode { get; private set; }
    public bool? ReturnType { get; private set; }
    public bool? InOut { get; private set; }
    public int? ExternalPost { get; private set; }
    /// <summary> طول العنصر. </summary>
    public int? ItemLength { get; private set; }
    /// <summary> عرض العنصر. </summary>
    public int? ItemWidth { get; private set; }
    /// <summary> ارتفاع العنصر. </summary>
    public int? ItemHeight { get; private set; }
    /// <summary> رقم العنصر الإضافي. </summary>
    public int? ItemNumber { get; private set; }
    /// <summary> كمية الوزن. </summary>
    public int? WeightQty { get; private set; }
    /// <summary> وحدة الوزن. </summary>
    public string? WeightUnit { get; private set; }
    /// <summary> رقم مرجعي إضافي. </summary>
    public int? ArgumentNo { get; private set; }
    /// <summary> تاريخ الإضافة. </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> تاريخ آخر تعديل. </summary>
    public DateTime? UpdatedDate { get; private set; }
    public short CompanyNo { get; private set; }
    public int BranchNo { get; private set; }
    public short? BranchYear { get; private set; }
    public short? BranchUser { get; private set; }
    public bool? FreeType { get; private set; }
    public short? LevelNo { get; private set; }
    /// <summary> سعر العنصر بعد الضريبة. </summary>
    public int? ItemPriceVat { get; private set; }
    public long? EmployeeNo { get; private set; }
    /// <summary> مبلغ الخصم الرئيسي بعد الضريبة. </summary>
    public int? DiscountAmountMasterVat { get; private set; }
    /// <summary> نسبة الخصم. </summary>
    public int? DiscountPercent { get; private set; }
    /// <summary> مبلغ الخصم التفصيلي. </summary>
    public int? DiscountAmountDetail { get; private set; }
    /// <summary> مبلغ الخصم التفصيلي بعد الضريبة. </summary>
    public int? DiscountAmountDetailVat { get; private set; }
    /// <summary> نسبة خصم إضافية. </summary>
    public int? DiscountPercent2 { get; private set; }
    /// <summary> مبلغ خصم إضافي تفصيلي. </summary>
    public int? DiscountAmountDetail2 { get; private set; }
    /// <summary> مبلغ خصم إضافي تفصيلي بعد الضريبة. </summary>
    public int? DiscountAmountDetail2Vat { get; private set; }
    /// <summary> نسبة خصم إضافية ثالثة. </summary>
    public int? DiscountPercent3 { get; private set; }
    /// <summary> مبلغ خصم إضافي ثالث. </summary>
    public int? DiscountAmountDetail3 { get; private set; }
    /// <summary> مبلغ خصم إضافي ثالث بعد الضريبة. </summary>
    public int? DiscountAmountDetail3Vat { get; private set; }
    /// <summary> مبلغ إضافي آخر. </summary>
    public int? OtherAmount { get; private set; }
    /// <summary> مبلغ الضريبة على الإضافات. </summary>
    public int? VatAmountOther { get; private set; }
    /// <summary> نسبة ضريبة القيمة المضافة. </summary>
    public int? VatPercent { get; private set; }
    /// <summary> مبلغ الخصم الرئيسي بدون ضريبة. </summary>
    public int? DiscountAmountMaster { get; private set; }
    public Warehouse Warehouse { get; private set; } // Navigation
}