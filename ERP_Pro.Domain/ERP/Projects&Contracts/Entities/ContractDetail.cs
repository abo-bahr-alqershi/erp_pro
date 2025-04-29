public class ContractDetail
{
    /// <summary> رقم المستند الرئيسي </summary>
    public long? DocumentNo { get; private set; }
    /// <summary> تسلسل المستند </summary>
    public long? DocumentSerial { get; private set; }
    /// <summary> رقم العقد </summary>
    public string ContractNo { get; private set; }
    /// <summary> رقم السطر </summary>
    public int RecordNo { get; private set; }
    /// <summary> كود الصنف </summary>
    public string ItemCode { get; private set; }
    /// <summary> اسم الصنف </summary>
    public string? ItemName { get; private set; }
    /// <summary> الكمية المتعاقد عليها </summary>
    public int? ItemQty { get; private set; }
    /// <summary> حجم العبوة </summary>
    public int PackSize { get; private set; }
    /// <summary> كمية العبوة </summary>
    public int PackQty { get; private set; }
    /// <summary> سعر الوحدة </summary>
    public int? ItemPrice { get; private set; }
    /// <summary> وحدة الصنف </summary>
    public string? ItemUnit { get; private set; }
    /// <summary> خصم رئيسي </summary>
    public int? DiscountAmountMaster { get; private set; }
    /// <summary> نسبة الخصم </summary>
    public int? DiscountPercent { get; private set; }
    /// <summary> خصم تفصيلي </summary>
    public int? DiscountAmountDetail { get; private set; }
    /// <summary> إجمالي الخصم </summary>
    public int? DiscountAmount { get; private set; }
    /// <summary> معطل (1=نعم) </summary>
    public bool? Inactive { get; private set; }
    /// <summary> كمية مجانية </summary>
    public int? FreeQty { get; private set; }
    /// <summary> مركز التكلفة </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> مبلغ الضريبة </summary>
    public int? VATAmount { get; private set; }
    /// <summary> نسبة الضريبة </summary>
    public int? VATPercent { get; private set; }
    /// <summary> سعر الوحدة بعد الضريبة </summary>
    public int? ItemPriceVAT { get; private set; }
    /// <summary> وصف الصنف </summary>
    public string? ItemDescription { get; private set; }
    /// <summary> رقم الشركة </summary>
    public short CompanyNo { get; private set; }
    /// <summary> رقم الفرع </summary>
    public int BranchNo { get; private set; }
    /// <summary> السنة المالية للفرع </summary>
    public short? BranchYear { get; private set; }
    /// <summary> مستخدم الفرع </summary>
    public short? BranchUser { get; private set; }
    /// <summary> عدد مرات التحديث </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> رقم المشروع </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> رقم النشاط </summary>
    public string? ActivityNo { get; private set; }
    public string? FieldDtl1 { get; private set; }
    public string? FieldDtl2 { get; private set; }
    public string? FieldDtl3 { get; private set; }
    public string? FieldDtl4 { get; private set; }
    public string? FieldDtl5 { get; private set; }
    public string? FieldDtl6 { get; private set; }
    public string? FieldDtl7 { get; private set; }
    public string? FieldDtl8 { get; private set; }
    public string? FieldDtl9 { get; private set; }
    public string? FieldDtl10 { get; private set; }
    /// <summary> كود المستودع </summary>
    public long? WarehouseCode { get; private set; }
    /// <summary> رقم المستوى </summary>
    public short? LevelNo { get; private set; }
    /// <summary> خصم تفصيلي بعد الضريبة </summary>
    public int? DiscountAmountDetailVAT { get; private set; }
    /// <summary> سعر المستوى </summary>
    public int? ItemPriceLevelNo { get; private set; }
    /// <summary> ضريبة الخصم التفصيلي بعد الضريبة </summary>
    public int? VATAmountDiscountDetailVAT { get; private set; }
    /// <summary> خصم رئيسي بعد الضريبة </summary>
    public int? DiscountAmountMasterVAT { get; private set; }
    /// <summary> ضريبة الخصم الرئيسي بعد الضريبة </summary>
    public int? VATAmountDiscountMasterVAT { get; private set; }
    /// <summary> رقم معامل أو مرجع إضافي </summary>
    public int? ArgumentNo { get; private set; }
    /// <summary> ارتفاع الصنف </summary>
    public int? ItemHeight { get; private set; }
    /// <summary> طول الصنف </summary>
    public int? ItemLength { get; private set; }
    /// <summary> رقم الصنف التسلسلي </summary>
    public int? ItemNumber { get; private set; }
    /// <summary> عرض الصنف </summary>
    public int? ItemWidth { get; private set; }
    /// <summary> كمية الوزن </summary>
    public int? WeightQty { get; private set; }
    /// <summary> وحدة الوزن </summary>
    public string? WeightUnit { get; private set; }
    public ContractMaster ContractMaster { get; private set; } // Navigation
}