public class ItemBatch
{
    /// <summary> كود الصنف </summary>
    public string? ItemCode { get; private set; }
    /// <summary> رقم العمود الأول التصنيفي </summary>
    public bool? ColNo1 { get; private set; }
    /// <summary> وصف تشغيلي/دفعة فرعية 1 </summary>
    public string? BatchDescNo1 { get; private set; }
    /// <summary> رقم العمود الثاني التصنيفي </summary>
    public bool? ColNo2 { get; private set; }
    /// <summary> وصف تشغيلي/دفعة فرعية 2 </summary>
    public string? BatchDescNo2 { get; private set; }
    /// <summary> رقم العمود الثالث التصنيفي </summary>
    public bool? ColNo3 { get; private set; }
    /// <summary> وصف تشغيلي/دفعة فرعية 3 </summary>
    public string? BatchDescNo3 { get; private set; }
    /// <summary> رقم العمود الرابع التصنيفي </summary>
    public bool? ColNo4 { get; private set; }
    /// <summary> وصف تشغيلي/دفعة فرعية 4 </summary>
    public string? BatchDescNo4 { get; private set; }
    /// <summary> رقم العمود الخامس التصنيفي </summary>
    public bool? ColNo5 { get; private set; }
    /// <summary> وصف تشغيلي/دفعة فرعية 5 </summary>
    public string? BatchDescNo5 { get; private set; }
    /// <summary> رقم الدفعة/التشغيلة الرئيسي </summary>
    public string? BatchNo { get; private set; }
    /// <summary> رقم المستخدم الذي أضاف السطر </summary>
    public int? AddedByUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> رقم المستخدم الذي عدل السطر </summary>
    public int? UpdatedByUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> رقم الشركة </summary>
    public short CompanyNo { get; private set; }
    /// <summary> رقم الفرع </summary>
    public int BranchNo { get; private set; }
    /// <summary> السنة المالية للفرع </summary>
    public short? BranchYear { get; private set; }
    /// <summary> مستخدم الفرع </summary>
    public short? BranchUser { get; private set; }
    /// <summary> أولوية التقرير </summary>
    public int? ReportPriority { get; private set; }
    /// <summary> عدد مرات التعديل </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public string ItmUnt { get; private set; }
    public int PSize { get; private set; }
    public bool? MainUnit { get; private set; }
    public bool? SaleUnit { get; private set; }
    public bool? PurUnit { get; private set; }
    public bool? StockUnit { get; private set; }
    public bool? PriceUnit { get; private set; }
    public bool? NoSale { get; private set; }
    public string? Barcode { get; private set; }
    public int? LvlUnit { get; private set; }
    public bool? ExcptnDiscCrdFlg { get; private set; }
    public bool? Inactive { get; private set; }
    public string? InactiveRes { get; private set; }
    public int? InactiveUId { get; private set; }
    public DateTime? InactiveDate { get; private set; }
    /// <summary> رقم المستخدم الذي أضاف السطر </summary>
    public int AddedByUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime AddedDate { get; private set; }
    /// <summary> رقم المستخدم الذي عدل السطر </summary>
    public int? UpdatedByUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> عدد مرات التعديل </summary>
    public long? UpdateCount { get; private set; }
    public bool? QrCodeMthdNo { get; private set; }
    public bool? UseSrlno { get; private set; }
    public bool? ChfUntFlg { get; private set; }
    public string? ItmUntLDsc { get; private set; }
    public string? ItmUntFDsc { get; private set; }
    public bool? StoreUnit { get; private set; }
    public int? WeightUnit { get; private set; }
}