public class StockCountTmp
{
    /// <summary> كود الصنف. </summary>
    public string? ItemCode { get; private set; }
    /// <summary> اسم الصنف. </summary>
    public string? ItemName { get; private set; }
    /// <summary> وحدة الصنف. </summary>
    public string ItemUnit { get; private set; }
    /// <summary> كود المستودع. </summary>
    public long? WarehouseCode { get; private set; }
    /// <summary> رقم التشغيلة/الدفعة. </summary>
    public string? BatchNo { get; private set; }
    /// <summary> كمية الافتتاح. </summary>
    public int? OpeningQty { get; private set; }
    /// <summary> كمية الوارد. </summary>
    public int? IncomingQty { get; private set; }
    /// <summary> كمية المبيعات. </summary>
    public int? SaleQty { get; private set; }
    /// <summary> كمية نقطة البيع. </summary>
    public int? POSQty { get; private set; }
    /// <summary> صافي المبيعات. </summary>
    public int? NetSale { get; private set; }
    /// <summary> الكمية المتاحة. </summary>
    public int? AvailableQty { get; private set; }
    /// <summary> متوسط المبيعات اليومي. </summary>
    public int? AvgSaleDay { get; private set; }
    /// <summary> متوسط المبيعات العام. </summary>
    public int? AvgSaleGen { get; private set; }
    /// <summary> نسبة المبيعات للكمية. </summary>
    public int? PerSaleQty { get; private set; }
    /// <summary> عمر المبيعات للصنف. </summary>
    public int? ItemSaleAge { get; private set; }
    /// <summary> فترة عمر مبيعات الصنف. </summary>
    public int? ItemSaleAgePeriod { get; private set; }
    /// <summary> عمر الصنف في المخزون. </summary>
    public int? ItemAge { get; private set; }
    /// <summary> نسبة الصنف. </summary>
    public int? ItemRatio { get; private set; }
    /// <summary> نسبة مبيعات الصنف. </summary>
    public int? ItemSaleRatio { get; private set; }
    /// <summary> كمية لم يتم استلامها. </summary>
    public long? NotReceivedQty { get; private set; }
    /// <summary> مجموع كمية الوارد. </summary>
    public long? SumIncomingQty { get; private set; }
    /// <summary> كمية محولة من المستودع. </summary>
    public long? QtyFromWH { get; private set; }
    /// <summary> كمية محولة إلى المستودع. </summary>
    public long? QtyToWH { get; private set; }
    /// <summary> متوسط الكمية لفترة محددة. </summary>
    public long? AvgQtyPeriod { get; private set; }
    /// <summary> كود مجموعة الصنف. </summary>
    public string? GroupCode { get; private set; }
    /// <summary> كود تصنيف المجموعة. </summary>
    public string? GroupClassCode { get; private set; }
    /// <summary> كود مدير الصنف. </summary>
    public string? ManagerCode { get; private set; }
    /// <summary> كود المجموعة الفرعية. </summary>
    public string? SubGroupCode { get; private set; }
    /// <summary> رقم مساعد. </summary>
    public string? AssistantNo { get; private set; }
    /// <summary> رقم تفصيلي. </summary>
    public string? DetailNo { get; private set; }
    /// <summary> رقم النشاط المرتبط. </summary>
    public int? ActivityNo { get; private set; }
    /// <summary> تاريخ دخول الصنف. </summary>
    public DateTime? IncomeDate { get; private set; }
    /// <summary> نوع الصنف. </summary>
    public int? ItemType { get; private set; }
    /// <summary> رقم المدينة. </summary>
    public long? CityNo { get; private set; }
    /// <summary> رقم المنطقة. </summary>
    public long? RegionCode { get; private set; }
    /// <summary> ترتيب الصنف. </summary>
    public int? ItemOrder { get; private set; }
    /// <summary> عدد أيام الفترة. </summary>
    public int? PeriodDay { get; private set; }
    /// <summary> رقم المستند. </summary>
    public long? DocNo { get; private set; }
    /// <summary> المستخدم الذي أضاف السطر. </summary>
    public int? AddedByUserId { get; private set; }
    /// <summary> تاريخ الإضافة. </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> المستخدم الذي عدل السطر. </summary>
    public int? UpdatedByUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل. </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> رقم الشركة. </summary>
    public short? CompanyNo { get; private set; }
    /// <summary> رقم الفرع. </summary>
    public int? BranchNo { get; private set; }
    /// <summary> السنة المالية للفرع. </summary>
    public short? BranchYear { get; private set; }
    /// <summary> مستخدم الفرع. </summary>
    public short? BranchUser { get; private set; }
}