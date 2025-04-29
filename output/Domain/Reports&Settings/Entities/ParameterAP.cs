public class ParameterAP
{
    public bool? ParameterNo { get; private set; }
    public bool GenerateAPDocument { get; private set; }
    public bool AllowDocDeleteNo { get; private set; }
    public bool? DateGenerateAP { get; private set; }
    public bool DateSettingAP { get; private set; }
    public short VendorCodeLength { get; private set; }
    public bool VendorCodeType { get; private set; }
    public bool APAccountLinkType { get; private set; }
    public bool APUseFreeQty { get; private set; }
    public bool ShowDiscountPerItemsAP { get; private set; }
    public bool? ItemDiscountType { get; private set; }
    public bool DiscountCount { get; private set; }
    public bool? APCostType { get; private set; }
    public bool APProjectType { get; private set; }
    public bool? APActivityType { get; private set; }
    public bool APWarehouseType { get; private set; }
    public bool? APLinkInventory { get; private set; }
    public short DecimalNoAP { get; private set; }
    public bool? LCType { get; private set; }
    public bool LCStatus { get; private set; }
    public bool? PurchaseDiscountType { get; private set; }
    public bool PurchaseFreeQtyCosting { get; private set; }
    public bool ShowGroupName { get; private set; }
    public bool UseLocalGRN { get; private set; }
    public bool UseDeleteAP { get; private set; }
    public bool UseModifyAP { get; private set; }
    public bool APPurchaseRequestSerial { get; private set; }
    public bool APPurchaseOrderSerial { get; private set; }
    public bool GRNSerial { get; private set; }
    public bool APPurchaseInvoiceSerial { get; private set; }
    public bool APPurchaseReturnInvoiceSerial { get; private set; }
    public bool UseBOE { get; private set; }
    public bool ConnectPurchaseRequestPOPI { get; private set; }
    public bool? ShowItemDescAP { get; private set; }
    public bool ShowItemDesc { get; private set; }
    public bool RequestRefNoAP { get; private set; }
    public bool RequestDescAP { get; private set; }
    public bool ShowWarehouseCodeInPreq { get; private set; }
    public bool UserApprovedInPreq { get; private set; }
    public bool InsertVendorItem { get; private set; }
    public bool FillLCInJV { get; private set; }
    public bool PaidInstallmentManual { get; private set; }
    public bool UsePINORTPRPY { get; private set; }
    public bool? Discount1NotAffectVendorTrans { get; private set; }
    public bool? Discount2NotAffectVendorTrans { get; private set; }
    public bool? Discount3NotAffectVendorTrans { get; private set; }
    public bool? APDiscountType { get; private set; }
    public bool? VendorSerial { get; private set; }
    /// <summary> عرض إجمالي الكمية </summary>
    public int? ShowSumQty { get; private set; }
    public bool? AllowDuplicateItem { get; private set; }
    public bool? PurchaseManualMandatory { get; private set; }
    public bool? UseServiceBill { get; private set; }
    /// <summary> تنبيه الأصناف غير المعالجة في طلب الشراء </summary>
    public int? NotifyItemPreqNotProcessed { get; private set; }
    /// <summary> تنبيه الأصناف غير المعالجة في أمر الشراء </summary>
    public int? NotifyItemPOrderNotProcessed { get; private set; }
    public bool? UseAPCheckQty { get; private set; }
    public bool? UseKIMBAP { get; private set; }
    public bool? EffectKIMBVendor { get; private set; }
    public bool? CalcVATAmountTypeAP { get; private set; }
    public bool? ConnectItemWithMoreVendor { get; private set; }
    public bool? AddItemPriceFromBill { get; private set; }
    public bool? APUseServiceItem { get; private set; }
    public bool? PurchaseOrderCheckMaxLimitCost { get; private set; }
    public bool? ShowTotalAmount { get; private set; }
    public bool? ConnectContractPOType { get; private set; }
    public bool? CheckItemConnectByVendor { get; private set; }
    /// <summary> استخدام مصاريف أخرى في AP </summary>
    public int? UseAPOtherCharge { get; private set; }
    public bool? ShowItemBarcodeAP { get; private set; }
    public bool? BillDueDateLastMonth { get; private set; }
    public short? ShowAddFieldDetailCount { get; private set; }
    public bool? ShowCostInPreqOrder { get; private set; }
    public bool? UseReturnBillRequest { get; private set; }
    public bool? UseLocalGRNMoreOne { get; private set; }
    public bool? RequestVendorBillNo { get; private set; }
    public bool? UseAssignToUser { get; private set; }
    public bool? ShowFreeQtyProfit { get; private set; }
    public bool? CalcDiscountWithoutItemDiscount { get; private set; }
    public bool? ShowTotalItemPriceByNet { get; private set; }
    public bool? RequiredContainerNo { get; private set; }
    public bool? NotCheckLCBalanceInBillCost { get; private set; }
    public bool? ConnectPurchaseOrderPIType { get; private set; }
    public bool? UseVendorVATType { get; private set; }
    public bool? PriceVendorItemUnitType { get; private set; }
    /// <summary> السماح بتحديث المورد في الفاتورة </summary>
    public int? AllowUpdateVendorInBill { get; private set; }
    public bool? AutoUpdateVendorPrice { get; private set; }
    public bool? UseReturnWithoutPIBillNo { get; private set; }
    public bool? APItemChargeCalcType { get; private set; }
    public bool? APItemChargeWarehouseType { get; private set; }
    public bool? APItemChargeUsePeriod { get; private set; }
    public bool? AllowedRePurchaseSerialNo { get; private set; }
    /// <summary> استخدام قائمة الشحن </summary>
    public int? UseShippingList { get; private set; }
    /// <summary> فترة الخصم في AP </summary>
    public int? APDiscountPeriod { get; private set; }
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> تحديث كمية الصنف حسب الخصم في المبيعات </summary>
    public int? UpdateQtyPremSales { get; private set; }
    public long? UpdateCount { get; private set; }
    public long? ReportPriority { get; private set; }
    /// <summary> الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public bool? APItemChargeCalcAmountType { get; private set; }
    public bool? UsePostTaxDue { get; private set; }
    /// <summary> استخدام قائمة أسعار المورد </summary>
    public int? UseVendorPriceList { get; private set; }
    public int? ShwItemSize { get; private set; }
    /// <summary> ربط سعر المورد بأمر الشراء </summary>
    public int? ConnectVendorPricePO { get; private set; }
    public bool? AddForceInvoicePI { get; private set; }
    public bool? UseArabicSearchICode { get; private set; }
    public bool? UseSalesPriceAsPurchasePrice { get; private set; }
    public short? LevelNoPrice { get; private set; }
    public bool? UseVendorClaim { get; private set; }
    public bool? ReturnPIFreeQtyPer { get; private set; }
    public bool? UsePICalcTaxFreeQty { get; private set; }
    public bool? AddItemPriceFromPO { get; private set; }
    public bool? UseDelivered { get; private set; }
    public bool? ShowICodeVendorAP { get; private set; }
}