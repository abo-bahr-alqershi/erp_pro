public class SalesChargesItems
{
    /// <summary> رقم المصروف </summary>
    public short? ChargeNo { get; private set; }
    /// <summary> تصنيف العميل </summary>
    public short? CustomerClass { get; private set; }
    /// <summary> كود العميل </summary>
    public string? CustomerCode { get; private set; }
    /// <summary> كود الصنف المرتبط بالمصروف </summary>
    public string ItemCode { get; private set; }
    /// <summary> وحدة الصنف </summary>
    public string? ItemUnit { get; private set; }
    /// <summary> حجم العبوة </summary>
    public int? PackSize { get; private set; }
    /// <summary> كود مجموعة الصنف </summary>
    public string? GroupCode { get; private set; }
    /// <summary> مبلغ المصروف </summary>
    public int? Amount { get; private set; }
    /// <summary> نسبة المصروف من الإجمالي </summary>
    public int? PercentAmount { get; private set; }
    /// <summary> كود المستودع المرتبط </summary>
    public long? WarehouseCode { get; private set; }
    /// <summary> نوع الفاتورة </summary>
    public int? SalesInvoiceType { get; private set; }
    /// <summary> تاريخ البداية </summary>
    public DateTime? FromDate { get; private set; }
    /// <summary> تاريخ النهاية </summary>
    public DateTime? ToDate { get; private set; }
    /// <summary> المستخدم الذي أضاف السطر </summary>
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> المستخدم الذي عدل السطر </summary>
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> عدد مرات التحديث </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> أولوية التقرير </summary>
    public long? ReportPriority { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    /// <summary> كود مجموعة الصنف </summary>
    public string? GroupCode { get; private set; }
    /// <summary> كود العميل </summary>
    public string? CustomerCode { get; private set; }
    /// <summary> تصنيف العميل </summary>
    public short? CustomerClass { get; private set; }
    /// <summary> كود الصنف المرتبط بالمصروف </summary>
    public string? ItemCode { get; private set; }
    /// <summary> حجم العبوة </summary>
    public int? PackSize { get; private set; }
    /// <summary> وحدة الصنف </summary>
    public string? ItemUnit { get; private set; }
    public bool? AmtType { get; private set; }
    /// <summary> مبلغ المصروف </summary>
    public decimal? Amount { get; private set; }
    public string? ACy { get; private set; }
    public int? AcRate { get; private set; }
    /// <summary> كود المستودع المرتبط </summary>
    public long? WarehouseCode { get; private set; }
    public long? WhgCode { get; private set; }
    /// <summary> تاريخ البداية </summary>
    public DateTime? FromDate { get; private set; }
    /// <summary> تاريخ النهاية </summary>
    public DateTime? ToDate { get; private set; }
    public short? LevNo { get; private set; }
    public int? FQty { get; private set; }
    public int? TQty { get; private set; }
    public string? BatchNo { get; private set; }
    public int? IPrice { get; private set; }
    public int? StkCost { get; private set; }
    public int? Avlqty { get; private set; }
    public string? DocDesc { get; private set; }
    /// <summary> المستخدم الذي أضاف السطر </summary>
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> المستخدم الذي عدل السطر </summary>
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public int BrnNo { get; private set; }
    /// <summary> عدد مرات التحديث </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> أولوية التقرير </summary>
    public long? ReportPriority { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public int? Amt2 { get; private set; }
    public int? Amt3 { get; private set; }
    public long? CstGrpCode { get; private set; }
    /// <summary> كود العميل </summary>
    public string? CustomerCode { get; private set; }
    /// <summary> تصنيف العميل </summary>
    public short? CustomerClass { get; private set; }
    /// <summary> كود الصنف المرتبط بالمصروف </summary>
    public string? ItemCode { get; private set; }
    /// <summary> حجم العبوة </summary>
    public int? PackSize { get; private set; }
    /// <summary> وحدة الصنف </summary>
    public string? ItemUnit { get; private set; }
    public bool? PayType { get; private set; }
    public int? LowQty { get; private set; }
    public int? PerQty { get; private set; }
    /// <summary> كود المستودع المرتبط </summary>
    public long? WarehouseCode { get; private set; }
    public long? WhgCode { get; private set; }
    public short? BillDocType { get; private set; }
    public long? RcrdNo { get; private set; }
    public int? FQty { get; private set; }
    public int? TQty { get; private set; }
    /// <summary> تاريخ البداية </summary>
    public DateTime? FromDate { get; private set; }
    /// <summary> تاريخ النهاية </summary>
    public DateTime? ToDate { get; private set; }
    /// <summary> المستخدم الذي أضاف السطر </summary>
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> المستخدم الذي عدل السطر </summary>
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public int BrnNo { get; private set; }
    /// <summary> عدد مرات التحديث </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> أولوية التقرير </summary>
    public long? ReportPriority { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public string? ReprsAName { get; private set; }
    public string? ReprsEName { get; private set; }
    public string? RACode { get; private set; }
    public short? SmanType { get; private set; }
    public short? CntryNo { get; private set; }
    public long? CityNo { get; private set; }
    public long? RCode { get; private set; }
    public string? RPhone { get; private set; }
    public bool? Inactive { get; private set; }
    public string? RBox { get; private set; }
    public string? RFax { get; private set; }
    public string? RNote { get; private set; }
    public string? RMobile { get; private set; }
    public string? RAddress { get; private set; }
    public decimal? CommPer { get; private set; }
    public string? GName { get; private set; }
    public string? GAddress { get; private set; }
    public DateTime? GStartDate { get; private set; }
    public DateTime? GExpireDate { get; private set; }
    public bool? GType { get; private set; }
    public int? GAmt { get; private set; }
    public bool? GStatus { get; private set; }
    public string? GFinCenter { get; private set; }
    public string? GWork { get; private set; }
    public DateTime? GDocDate { get; private set; }
    public string? GRegCourt { get; private set; }
    public string? GRegTrada { get; private set; }
    public string? GFileTrada { get; private set; }
    public string? GTel { get; private set; }
    public string? GFax { get; private set; }
    public string? RepCodeParent { get; private set; }
    public long? RouteNo { get; private set; }
    public long? Sortinroute { get; private set; }
    public long? CashNo { get; private set; }
    /// <summary> كود المستودع المرتبط </summary>
    public long? WarehouseCode { get; private set; }
    public string? CcCode { get; private set; }
    public string? PjNo { get; private set; }
    public string? ActvNo { get; private set; }
    public long? BankNo { get; private set; }
    public string? GrpCode { get; private set; }
    public string? SmanPass { get; private set; }
    public bool? UseInvDts { get; private set; }
    public int? CrLmt { get; private set; }
    public string? AcCodeDtl { get; private set; }
    public short? AcDtlTyp { get; private set; }
    public short? CheqType { get; private set; }
    public int? PostCheqTypeRec { get; private set; }
    public int? ConnBrnNo { get; private set; }
    public bool? WrkWithoutPln { get; private set; }
    public short? VstOpnTyp { get; private set; }
    public long? VstOpnDstnc { get; private set; }
    public long? RegnRng { get; private set; }
    public bool? ImplmntPlanSrtrouteMndtry { get; private set; }
    public bool? AutoMobilePosting { get; private set; }
    public bool? ShwQtyInAllWrhs { get; private set; }
    /// <summary> المستخدم الذي أضاف السطر </summary>
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> المستخدم الذي عدل السطر </summary>
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> عدد مرات التحديث </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> أولوية التقرير </summary>
    public long? ReportPriority { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public bool? AllwChngCstGps { get; private set; }
    public int? ClcTypNoTax { get; private set; }
    public bool? AllwCnclDoc { get; private set; }
    public bool? AllwRtrnAllItmFlg { get; private set; }
    public int? AppCstmrPlnInsrtMaxLmt { get; private set; }
    public bool? AllwModCstLoctn { get; private set; }
    public bool? NoSal { get; private set; }
    public bool? NoColct { get; private set; }
    public string? AppVerCode { get; private set; }
    public bool? AllwFileShare { get; private set; }
    public long? RepSer { get; private set; }
    public bool? ConnSpSman { get; private set; }
    public bool? NotAllwEntrRtrnSal { get; private set; }
    public bool? SaveVchrOnline { get; private set; }
    public short? SyncMethod { get; private set; }
    public DateTime? LastUpDateDts { get; private set; }
    public DateTime? LastPostDateDts { get; private set; }
    public bool? DtsClsFlg { get; private set; }
    public int? DtsClsUId { get; private set; }
    public DateTime? DtsClsDate { get; private set; }
    public int? CashAmtLmt { get; private set; }
    public int? CashAmtDailyLmt { get; private set; }
    public long? PlanNo { get; private set; }
    public long? PlanSer { get; private set; }
    public SalesCharges SalesCharges { get; private set; } // Navigation
    public Customer Customer { get; private set; } // Navigation
}