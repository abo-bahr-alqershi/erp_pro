public class ContractRenew
{
    /// <summary> رقم السطر </summary>
    public int RecordNo { get; private set; }
    /// <summary> رقم العقد </summary>
    public string ContractNo { get; private set; }
    /// <summary> رقم المستند الرئيسي </summary>
    public long? DocumentNo { get; private set; }
    /// <summary> تسلسل المستند </summary>
    public long DocumentSerial { get; private set; }
    /// <summary> تاريخ التجديد الجديد </summary>
    public DateTime? ContractNewDate { get; private set; }
    /// <summary> نوع الزيادة </summary>
    public int? IncreaseType { get; private set; }
    /// <summary> تاريخ بداية العقد بعد التجديد </summary>
    public DateTime? ContractFromDate { get; private set; }
    /// <summary> تاريخ نهاية العقد بعد التجديد </summary>
    public DateTime? ContractToDate { get; private set; }
    /// <summary> مبلغ العقد بعد التجديد </summary>
    public int? ContractAmount { get; private set; }
    /// <summary> وصف التجديد </summary>
    public string? ContractDesc { get; private set; }
    /// <summary> رقم مرجعي إضافي </summary>
    public string? ReferenceNo { get; private set; }
    /// <summary> المستخدم الذي أضاف السطر </summary>
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> المستخدم الذي عدل السطر </summary>
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> عدد مرات التحديث </summary>
    public int? UpdateCount { get; private set; }
    /// <summary> أولوية التقرير </summary>
    public int? ReportPriority { get; private set; }
    /// <summary> رقم الشركة </summary>
    public short CompanyNo { get; private set; }
    /// <summary> رقم الفرع </summary>
    public int BranchNo { get; private set; }
    /// <summary> السنة المالية للفرع </summary>
    public short? BranchYear { get; private set; }
    /// <summary> مستخدم الفرع </summary>
    public short? BranchUser { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public string? ICode { get; private set; }
    public string? TrmnlName { get; private set; }
    public string? FldName { get; private set; }
    public string? FldCode2 { get; private set; }
    public string? FldName2 { get; private set; }
    public long? WCode { get; private set; }
    public int? AvlQty { get; private set; }
    public int? IncQty { get; private set; }
    public int? IncNetAmt { get; private set; }
    public int? TrNotRecQty { get; private set; }
    public int? SalesQty { get; private set; }
    public int? SalesAmt { get; private set; }
    public int? RtSalesQty { get; private set; }
    public int? RtSalesAmt { get; private set; }
    public int? SalesNetQty { get; private set; }
    public int? SalesNetAmt { get; private set; }
    public int? ProfitPer { get; private set; }
    public int? ProfitAmt { get; private set; }
    public int? ItmSalesAge { get; private set; }
    public int? SalesDayAvg { get; private set; }
    public int? SalesGenAvg { get; private set; }
    public int? PerSaleQty { get; private set; }
    public int? SalesStkCost { get; private set; }
    public int? RtSalesStkCost { get; private set; }
    public int? SliceSalesQty1 { get; private set; }
    public int? SliceSalesAmt1 { get; private set; }
    public int? SliceRtSalesQty1 { get; private set; }
    public int? SliceRtSalesAmt1 { get; private set; }
    public int? SliceNetSalesQty1 { get; private set; }
    public int? SliceNetSalesAmt1 { get; private set; }
    public int? SliceRtQtyPer1 { get; private set; }
    public int? SliceProfitAmt1 { get; private set; }
    public int? SliceProfitPer1 { get; private set; }
    public int? SliceDiscAge1 { get; private set; }
    public int? SalesDayAvg1 { get; private set; }
    public int? SalesGenAvg1 { get; private set; }
    public int? SliceSalesStkCost1 { get; private set; }
    public int? SliceRtSalesStkCost1 { get; private set; }
    public int? SliceSalesQty2 { get; private set; }
    public int? SliceRtSalesQty2 { get; private set; }
    public int? SliceNetSalesQty2 { get; private set; }
    public int? SliceSalesAmt2 { get; private set; }
    public int? SliceRtSalesAmt2 { get; private set; }
    public int? SliceNetSalesAmt2 { get; private set; }
    public int? SliceRtQtyPer2 { get; private set; }
    public int? SliceProfitAmt2 { get; private set; }
    public int? SliceProfitPer2 { get; private set; }
    public int? SliceDiscAge2 { get; private set; }
    public int? SalesDayAvg2 { get; private set; }
    public int? SalesGenAvg2 { get; private set; }
    public int? SliceSalesStkCost2 { get; private set; }
    public int? SliceRtSalesStkCost2 { get; private set; }
    public int? SliceSalesQty3 { get; private set; }
    public int? SliceRtSalesQty3 { get; private set; }
    public int? SliceNetSalesQty3 { get; private set; }
    public int? SliceSalesAmt3 { get; private set; }
    public int? SliceRtSalesAmt3 { get; private set; }
    public int? SliceNetSalesAmt3 { get; private set; }
    public int? SliceRtQtyPer3 { get; private set; }
    public int? SliceProfitAmt3 { get; private set; }
    public int? SliceProfitPer3 { get; private set; }
    public int? SliceDiscAge3 { get; private set; }
    public int? SalesDayAvg3 { get; private set; }
    public int? SalesGenAvg3 { get; private set; }
    public int? SliceSalesStkCost3 { get; private set; }
    public int? SliceRtSalesStkCost3 { get; private set; }
    public int? SliceSalesQty4 { get; private set; }
    public int? SliceRtSalesQty4 { get; private set; }
    public int? SliceNetSalesQty4 { get; private set; }
    public int? SliceSalesAmt4 { get; private set; }
    public int? SliceRtSalesAmt4 { get; private set; }
    public int? SliceNetSalesAmt4 { get; private set; }
    public int? SliceRtQtyPer4 { get; private set; }
    public int? SliceProfitAmt4 { get; private set; }
    public int? SliceProfitPer4 { get; private set; }
    public int? SliceDiscAge4 { get; private set; }
    public int? SalesDayAvg4 { get; private set; }
    public int? SalesGenAvg4 { get; private set; }
    public int? SliceSalesStkCost4 { get; private set; }
    public int? SliceRtSalesStkCost4 { get; private set; }
    public int? SliceSalesQty5 { get; private set; }
    public int? SliceRtSalesQty5 { get; private set; }
    public int? SliceNetSalesQty5 { get; private set; }
    public int? SliceSalesAmt5 { get; private set; }
    public int? SliceRtSalesAmt5 { get; private set; }
    public int? SliceNetSalesAmt5 { get; private set; }
    public int? SliceRtQtyPer5 { get; private set; }
    public int? SliceProfitPer5 { get; private set; }
    public int? SliceProfitAmt5 { get; private set; }
    public int? SliceDiscAge5 { get; private set; }
    public int? SalesDayAvg5 { get; private set; }
    public int? SalesGenAvg5 { get; private set; }
    public int? SliceSalesStkCost5 { get; private set; }
    public int? SliceRtSalesStkCost5 { get; private set; }
    public int? SalesIncPer1 { get; private set; }
    public int? SalesIncPer2 { get; private set; }
    public int? SalesIncPer3 { get; private set; }
    public int? SalesIncPer4 { get; private set; }
    public int? SalesIncPer5 { get; private set; }
    public int? AvlQtyAmt { get; private set; }
    public int? OpenBalQty { get; private set; }
    public int? OpenBalAmt { get; private set; }
    public int? IncAmt { get; private set; }
    public int? OutQty { get; private set; }
    public int? OutAmt { get; private set; }
    public int? TrQty { get; private set; }
    public int? TrAmt { get; private set; }
    public int? AdjQty { get; private set; }
    public int? AdjAmt { get; private set; }
    public int? NetIncQty { get; private set; }
    public int? NetIncAmt { get; private set; }
    public string? BatchNo { get; private set; }
    public string? TrmnlName { get; private set; }
    /// <summary> رقم السطر </summary>
    public long? RecordNo { get; private set; }
    public long? RepNo { get; private set; }
    public DateTime? RepDate { get; private set; }
    public int? SalesNetStkCost { get; private set; }
    public int? TrNotRecAmt { get; private set; }
    public int? ItmSalesAgePrd { get; private set; }
    public int? RtSalesQtyPer { get; private set; }
    public int? TotAvlQty { get; private set; }
    public int? TotAvlQtyAmt { get; private set; }
    public int? TotOpenBalQty { get; private set; }
    public int? TotOpenBalAmt { get; private set; }
    public int? TotNetIncQty { get; private set; }
    public int? TotNetIncAmt { get; private set; }
    public int? SmanCommAmt { get; private set; }
    public int? NetSalesAftrSmanComm { get; private set; }
    public int? TotSalesQty { get; private set; }
    public int? TotSalesAmt { get; private set; }
    public int? TotRtSalesQty { get; private set; }
    public int? TotRtSalesAmt { get; private set; }
    public int? TotSalesNetQty { get; private set; }
    public int? TotSalesNetAmt { get; private set; }
    public int? TotProfitAmt { get; private set; }
    public int? TotSalesStkCost { get; private set; }
    public int? TotSalesNetStkCost { get; private set; }
    public int? TotSmanCommAmt { get; private set; }
    public int? TotNetSalesAftrSmanComm { get; private set; }
    public int? TotPlAftrSmanComm { get; private set; }
    public int? PlAftrSmanComm { get; private set; }
    public int? TotRtSalesStkCost { get; private set; }
    /// <summary> رقم الفرع </summary>
    public int? BranchNo { get; private set; }
    /// <summary> السنة المالية للفرع </summary>
    public short? BranchYear { get; private set; }
    /// <summary> رقم الشركة </summary>
    public short? CompanyNo { get; private set; }
    /// <summary> مستخدم الفرع </summary>
    public short? BranchUser { get; private set; }
    public string? ItmUnt { get; private set; }
    public string? FldCode2 { get; private set; }
    public string? FldName { get; private set; }
    public string? TrmnlName { get; private set; }
    public long? WCode { get; private set; }
    public string? BatchNo { get; private set; }
    public int? GrpLvl { get; private set; }
    public string? TrmnlName { get; private set; }
    public long? WCode { get; private set; }
    public string? FldValue { get; private set; }
    public string? FldValue2 { get; private set; }
    public string? BatchNo { get; private set; }
    public string? BatchCol { get; private set; }
    public string? TrmnlName { get; private set; }
    public int? DocType { get; private set; }
    public DateTime? DocDate { get; private set; }
    public string? FldCode { get; private set; }
    public string? FldName { get; private set; }
    public string? ICode { get; private set; }
    public string? ItmUnt { get; private set; }
    public long? WCode { get; private set; }
    public string? BatchNo { get; private set; }
    /// <summary> رقم السطر </summary>
    public long? RecordNo { get; private set; }
    public bool? Processed { get; private set; }
    public ContractMaster ContractMaster { get; private set; } // Navigation
}