public class StockCountTmp
{
    /// <summary> كود الصنف. </summary>
    public string? ItemCode { get; private set; }
    /// <summary> اسم الصنف. </summary>
    public string? ItemName { get; private set; }
    /// <summary> وحدة الصنف. </summary>
    public string ItemUnit { get; private set; }
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
    public long? NotReceivedQty { get; private set; }
    public long? SumIncomingQty { get; private set; }
    public long? QtyFromWH { get; private set; }
    public long? QtyToWH { get; private set; }
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
    public int? ActivityNo { get; private set; }
    /// <summary> تاريخ دخول الصنف. </summary>
    public DateTime? IncomeDate { get; private set; }
    public int? ItemType { get; private set; }
    public long? CityNo { get; private set; }
    public long? RegionCode { get; private set; }
    public int? ItemOrder { get; private set; }
    public int? PeriodDay { get; private set; }
    public long? DocNo { get; private set; }
    public int? AddedByUserId { get; private set; }
    /// <summary> تاريخ الإضافة. </summary>
    public DateTime? AddedDate { get; private set; }
    public int? UpdatedByUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل. </summary>
    public DateTime? UpdatedDate { get; private set; }
    public short? CompanyNo { get; private set; }
    public int? BranchNo { get; private set; }
    public short? BranchYear { get; private set; }
    public short? BranchUser { get; private set; }
}