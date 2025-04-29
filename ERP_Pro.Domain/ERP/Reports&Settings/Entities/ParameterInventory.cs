public class ParameterInventory
{
    /// <summary> رقم السطر/المعيار </summary>
    public bool? ParameterNo { get; private set; }
    /// <summary> توليد مستند مخزون تلقائي </summary>
    public bool GenerateInventoryDocument { get; private set; }
    /// <summary> السماح بحذف مستندات المخزون </summary>
    public bool AllowDocDeleteNo { get; private set; }
    /// <summary> توليد المستند بتاريخ معين </summary>
    public bool? DateGenerateInventory { get; private set; }
    /// <summary> إعدادات تاريخ المستند </summary>
    public bool DateSettingInventory { get; private set; }
    /// <summary> ربط مع الحسابات العامة </summary>
    public bool LinkWithGL { get; private set; }
    /// <summary> طول كود الصنف </summary>
    public short ItemCodeLength { get; private set; }
    /// <summary> نوع كود الصنف </summary>
    public bool ItemCodeType { get; private set; }
    /// <summary> استخدام كود بديل للصنف </summary>
    public bool UseAltCode { get; private set; }
    /// <summary> استخدام تاريخ الصلاحية </summary>
    public bool UseExpireDate { get; private set; }
    /// <summary> استخدام الدفعات </summary>
    public bool UseBatchNo { get; private set; }
    /// <summary> استخدام مستودعات متعددة </summary>
    public bool UseMultiWarehouse { get; private set; }
    /// <summary> نوع مستودع الوارد </summary>
    public bool? IncomingWarehouseType { get; private set; }
    /// <summary> نوع مستودع الصادر </summary>
    public bool OutgoingWarehouseType { get; private set; }
    /// <summary> نوع تكلفة الوارد </summary>
    public bool IncomingCostType { get; private set; }
    /// <summary> نوع تكلفة الصادر </summary>
    public bool OutgoingCostType { get; private set; }
    /// <summary> نوع تكلفة تسوية المخزون </summary>
    public bool StockAdjustCostType { get; private set; }
    /// <summary> نوع تكلفة التحويل </summary>
    public bool TransferCostType { get; private set; }
    /// <summary> نوع مشروع الصادر </summary>
    public bool OutProjectType { get; private set; }
    /// <summary> نوع مشروع الوارد </summary>
    public bool IncProjectType { get; private set; }
    /// <summary> نوع مشروع المخزون </summary>
    public bool StockProjectType { get; private set; }
    /// <summary> نوع مشروع التحويل </summary>
    public bool TransferProjectType { get; private set; }
    /// <summary> نوع نشاط الصادر </summary>
    public bool OutActivityType { get; private set; }
    /// <summary> نوع نشاط الوارد </summary>
    public bool? IncActivityType { get; private set; }
    /// <summary> نوع نشاط المخزون </summary>
    public bool StockActivityType { get; private set; }
    /// <summary> نوع نشاط التحويل </summary>
    public bool? TransferActivityType { get; private set; }
    /// <summary> استخدام احتساب التكلفة </summary>
    public bool UseCosting { get; private set; }
    /// <summary> نوع احتساب التكلفة </summary>
    public bool? CostingType { get; private set; }
    /// <summary> نوع المتوسط المرجح </summary>
    public bool WeightedAvgType { get; private set; }
    /// <summary> علم ترحيل الصنف </summary>
    public bool ItemPostingFlag { get; private set; }
    /// <summary> السماح بجرد سلبي </summary>
    public bool UseNegativeInventory { get; private set; }
    /// <summary> عرض وصف الصنف </summary>
    public bool ShowItemDesc { get; private set; }
    /// <summary> عرض وصف الصنف </summary>
    public bool ShowItemDescription { get; private set; }
    /// <summary> عدد الكسور العشرية في المخزون </summary>
    public short NoOfDecimalInv { get; private set; }
    /// <summary> تحديث الرصيد تلقائيا </summary>
    public bool UpdateBalance { get; private set; }
    /// <summary> استخدام الرقم التسلسلي </summary>
    public bool UseSerialNo { get; private set; }
    /// <summary> تفعيل أصناف الأمانة </summary>
    public bool? UseConsignmentItem { get; private set; }
    /// <summary> تفعيل الأصناف المركبة </summary>
    public bool UseCompoundItems { get; private set; }
    /// <summary> استخدام الرقم التسلسلي للوارد </summary>
    public bool IncomingSerial { get; private set; }
    /// <summary> استخدام الرقم التسلسلي للصادر </summary>
    public bool OutgoingSerial { get; private set; }
    /// <summary> استخدام الرقم التسلسلي للتحويل </summary>
    public bool TransferSerial { get; private set; }
    /// <summary> عرض حجم الصنف </summary>
    public bool ShowItemSize { get; private set; }
    /// <summary> إخفاء حساب الصادر </summary>
    public bool HideOutgoingAccount { get; private set; }
    /// <summary> طلب الرقم التسلسلي للصنف </summary>
    public bool? RequestSerial { get; private set; }
    /// <summary> السماح بتكرار الصنف في الجرد اليدوي </summary>
    public bool UseDuplicateItemManualInventory { get; private set; }
    /// <summary> استخدام تكلفة معيارية للصنف </summary>
    public bool UseStandardItemCost { get; private set; }
    /// <summary> السماح بتعديل السعر عند الطلب </summary>
    public bool? UseRequestModifyPrice { get; private set; }
    /// <summary> السماح بحذف مستندات المخزون </summary>
    public bool UseDeleteInventory { get; private set; }
    /// <summary> السماح بتعديل مستندات المخزون </summary>
    public bool UseModifyInventory { get; private set; }
    /// <summary> نوع التسعير </summary>
    public bool PriceType { get; private set; }
    /// <summary> نوع العائد على الاستثمار </summary>
    public bool ROIType { get; private set; }
    /// <summary> تفعيل حد أدنى لسعر الوحدة </summary>
    public bool? UseMinUnitPrice { get; private set; }
    /// <summary> توليد كود الصنف تلقائيًا </summary>
    public bool GenerateItemCode { get; private set; }
    /// <summary> ربط المجموعات </summary>
    public bool ConnectGroups { get; private set; }
    /// <summary> ربط تفصيل المجموعات </summary>
    public bool ConnectDetailGroupByGroups { get; private set; }
    /// <summary> ربط مجموعة المساعد </summary>
    public bool ConnectAssistantGroupByGroups { get; private set; }
    /// <summary> إدخال يدوي للصنف </summary>
    public bool InsertItemManual { get; private set; }
    /// <summary> عدد الكسور في تكلفة المخزون </summary>
    public short StockCostFraction { get; private set; }
    /// <summary> استخدام مصروفات التحويل </summary>
    public bool UseTransferExpense { get; private set; }
    /// <summary> السماح بتعديل كمية الاستلام </summary>
    public bool? AllowModifyReceiveQty { get; private set; }
    /// <summary> السماح بتعديل مستودع الاستلام </summary>
    public bool AllowModifyReceiveWarehouse { get; private set; }
    /// <summary> تفعيل إرفاق ملف للصنف </summary>
    public bool UseItemAttach { get; private set; }
    /// <summary> ربط طلب التحويل </summary>
    public bool ConnectRequestWarehouseTransfer { get; private set; }
    /// <summary> ربط طلب الصادر </summary>
    public bool ConnectRequestOutgoing { get; private set; }
    /// <summary> ربط المجموعة في الوارد </summary>
    public bool? ConnectGroupIncoming { get; private set; }
    /// <summary> أقل نسبة تكلفة مئوية </summary>
    public short? MinLimitCostPercent { get; private set; }
    /// <summary> أعلى نسبة تكلفة مئوية </summary>
    public short? MaxLimitCostPercent { get; private set; }
    /// <summary> أقل نسبة سعر مئوية </summary>
    public short? MinLimitPricePercent { get; private set; }
    /// <summary> أعلى نسبة سعر مئوية </summary>
    public short? MaxLimitPricePercent { get; private set; }
    /// <summary> نوع تكلفة التسعير </summary>
    public bool? PriceCostType { get; private set; }
    /// <summary> طلب رقم مرجعي في المخزون </summary>
    public bool RequestRefNoInventory { get; private set; }
    /// <summary> طلب وصف الصنف في المستند </summary>
    public bool RequestDescInventory { get; private set; }
    /// <summary> توليد الباركود للصنف </summary>
    public string? GenerateBarcode { get; private set; }
    /// <summary> ربط الصنف تلقائياً عند الإرفاق </summary>
    public bool? ConnectItemByAttachAuto { get; private set; }
    /// <summary> ربط نشاط الصنف بصلاحية المستخدم </summary>
    public bool? ConnectItemActivityByUserPrivilege { get; private set; }
    /// <summary> السماح بالبيع المؤجل </summary>
    public bool? DealingUnderSelling { get; private set; }
    /// <summary> السماح بتعديل حساب الحركة </summary>
    public bool? AllowUpdateTransactionAccount { get; private set; }
    /// <summary> السماح بتجاوز الكمية في الحركة </summary>
    public bool? AllowExceedTransactionQty { get; private set; }
    /// <summary> تفعيل التحويل بين مستودعات متعددة </summary>
    public bool? UseMultiWarehouseTransfer { get; private set; }
    /// <summary> تفعيل بضاعة الأمانة </summary>
    public bool? UseGoodOnConsignment { get; private set; }
    /// <summary> السماح بحذف الصنف المستلم </summary>
    public bool? AllowDeleteReceiveItem { get; private set; }
    /// <summary> تفعيل جرد يدوي متسلسل </summary>
    public bool? ManualInventorySerial { get; private set; }
    /// <summary> تفعيل نظام الوزن </summary>
    public bool? UseWeightSystem { get; private set; }
    /// <summary> معامل الوزن الافتراضي </summary>
    public bool? DefaultWeightArgument { get; private set; }
    /// <summary> نوع نظام المخزون </summary>
    public bool? InventorySystemType { get; private set; }
    /// <summary> نوع إغلاق نظام المخزون </summary>
    public bool? InventorySystemCloseType { get; private set; }
    /// <summary> نوع إغلاق تكلفة المخزون </summary>
    public bool? InventoryCloseCostType { get; private set; }
    /// <summary> تفعيل سعر التحويل بناءً على تكلفة الاستلام </summary>
    public bool? UsePriceWarehouseTransferReceiveCost { get; private set; }
    /// <summary> ربط المستودع بمركز التكلفة إلزامي </summary>
    public bool? ConnectWarehouseCostCenterMandatory { get; private set; }
    /// <summary> عرض الأصناف الرئيسية فقط </summary>
    public bool? ShowParentItemOnly { get; private set; }
    /// <summary> اعتماد نفس الباركود لنفس رقم الدفعة </summary>
    public int? ApprovedBarcodeSameBatchNo { get; private set; }
    /// <summary> اعتماد نفس الباركود لنفس الرقم التسلسلي </summary>
    public int? ApprovedBarcodeSameSerialNo { get; private set; }
    /// <summary> السماح بسعر لأصناف غير مركبة </summary>
    public bool? NotInstallItemHasPrice { get; private set; }
    /// <summary> ربط النشاط بالكود والمستودع ومركز التكلفة </summary>
    public bool? ConnectActivityByWarehouseCCCode { get; private set; }
    /// <summary> طباعة باركود الصنف بدون السعر </summary>
    public bool? PrintItemBarcodeNotPrice { get; private set; }
    /// <summary> عدد أعمدة الدفعات </summary>
    public short? BatchNoColumnNo { get; private set; }
    /// <summary> اسم عمود الدفعة 1 </summary>
    public string? BatchNameColumn1 { get; private set; }
    /// <summary> اسم عمود الدفعة 2 </summary>
    public string? BatchNameColumn2 { get; private set; }
    /// <summary> اسم عمود الدفعة 3 </summary>
    public string? BatchNameColumn3 { get; private set; }
    /// <summary> اسم عمود الدفعة 4 </summary>
    public string? BatchNameColumn4 { get; private set; }
    /// <summary> اسم عمود الدفعة 5 </summary>
    public string? BatchNameColumn5 { get; private set; }
    /// <summary> عرض عمود الدفعة 1 في الشاشة </summary>
    public bool? ShowBatchCol1InScreen { get; private set; }
    /// <summary> عرض عمود الدفعة 2 في الشاشة </summary>
    public bool? ShowBatchCol2InScreen { get; private set; }
    /// <summary> عرض عمود الدفعة 3 في الشاشة </summary>
    public bool? ShowBatchCol3InScreen { get; private set; }
    /// <summary> عرض عمود الدفعة 4 في الشاشة </summary>
    public bool? ShowBatchCol4InScreen { get; private set; }
    /// <summary> عرض عمود الدفعة 5 في الشاشة </summary>
    public bool? ShowBatchCol5InScreen { get; private set; }
    /// <summary> تفعيل الرقم التسلسلي </summary>
    public bool? ActiveSerialNo { get; private set; }
    /// <summary> توليد باركود الصنف تلقائيًا </summary>
    public bool? GenerateAutoItemBarcode { get; private set; }
    /// <summary> استخدام نسبة تكلفة في أصناف الكيت </summary>
    public bool? UsePercentCostKitItem { get; private set; }
    /// <summary> تركيب أصناف الكيت في تسوية المخزون </summary>
    public bool? InstallPosKitItemInStockAdjust { get; private set; }
    /// <summary> حجم عمود 1 </summary>
    public short? SizeCol1 { get; private set; }
    /// <summary> حجم عمود 2 </summary>
    public short? SizeCol2 { get; private set; }
    /// <summary> حجم عمود 3 </summary>
    public short? SizeCol3 { get; private set; }
    /// <summary> حجم عمود 4 </summary>
    public short? SizeCol4 { get; private set; }
    /// <summary> حجم عمود 5 </summary>
    public short? SizeCol5 { get; private set; }
    /// <summary> رقم الصنف عمود 1 </summary>
    public bool? ItemNoCol1 { get; private set; }
    /// <summary> رقم الصنف عمود 2 </summary>
    public bool? ItemNoCol2 { get; private set; }
    /// <summary> رقم الصنف عمود 3 </summary>
    public bool? ItemNoCol3 { get; private set; }
    /// <summary> رقم الصنف عمود 4 </summary>
    public bool? ItemNoCol4 { get; private set; }
    /// <summary> رقم الصنف عمود 5 </summary>
    public bool? ItemNoCol5 { get; private set; }
    /// <summary> تكرار الصنف في الاستلام </summary>
    public bool? DuplicateItemTransactionReceive { get; private set; }
    /// <summary> أول باركود </summary>
    public short? BarcodeFirst { get; private set; }
    /// <summary> ثاني باركود </summary>
    public short? BarcodeSecond { get; private set; }
    /// <summary> ثالث باركود </summary>
    public short? BarcodeThird { get; private set; }
    /// <summary> رابع باركود </summary>
    public short? BarcodeFourth { get; private set; }
    /// <summary> خامس باركود </summary>
    public short? BarcodeFifth { get; private set; }
    /// <summary> سادس باركود </summary>
    public short? BarcodeSixth { get; private set; }
    /// <summary> طول أول باركود </summary>
    public short? BarcodeFirstLength { get; private set; }
    /// <summary> طول ثاني باركود </summary>
    public short? BarcodeSecondLength { get; private set; }
    /// <summary> طول ثالث باركود </summary>
    public short? BarcodeThirdLength { get; private set; }
    /// <summary> طول رابع باركود </summary>
    public short? BarcodeFourthLength { get; private set; }
    /// <summary> طول خامس باركود </summary>
    public short? BarcodeFifthLength { get; private set; }
    /// <summary> طول سادس باركود </summary>
    public short? BarcodeSixthLength { get; private set; }
    /// <summary> اتجاه أول باركود </summary>
    public bool? BarcodeFirstDir { get; private set; }
    /// <summary> اتجاه ثاني باركود </summary>
    public bool? BarcodeSecondDir { get; private set; }
    /// <summary> اتجاه ثالث باركود </summary>
    public bool? BarcodeThirdDir { get; private set; }
    /// <summary> اتجاه رابع باركود </summary>
    public bool? BarcodeFourthDir { get; private set; }
    /// <summary> اتجاه خامس باركود </summary>
    public bool? BarcodeFifthDir { get; private set; }
    /// <summary> اتجاه سادس باركود </summary>
    public bool? BarcodeSixthDir { get; private set; }
    /// <summary> اعتماد سعر افتراضي لكل المستويات </summary>
    public bool? ApprovedDefaultPriceForAllLevel { get; private set; }
    /// <summary> الجرد اليدوي لكل صنف على حدة </summary>
    public bool? ManualInventoryByOne { get; private set; }
    /// <summary> احتساب أيام الفاقد </summary>
    public bool? CalcLostDay { get; private set; }
    /// <summary> إدراج كود المجموعة في كود الصنف </summary>
    public bool? IncludeGroupCodeInItemCode { get; private set; }
    /// <summary> استخدام تاريخ انتهاء الصنف في الوارد </summary>
    public bool? UseIncomingItemExpireDate { get; private set; }
    /// <summary> عرض ملاحظة عند تجاوز الكمية في التحويل </summary>
    public bool? ShowNoteExceedQtyInWarehouseTransfer { get; private set; }
    /// <summary> السماح بتكرار الصنف في الوارد </summary>
    public bool? DuplicateItemInIncoming { get; private set; }
    /// <summary> السماح بتكرار الصنف في الصادر </summary>
    public bool? DuplicateItemInOutgoing { get; private set; }
    /// <summary> استلام تلقائي في التحويل بناءً على المستودع </summary>
    public bool? UseAutoReceiveWarehouseTransferByWarehouseCode { get; private set; }
    /// <summary> تحقق من إلزامية كود المستودع في التحويل </summary>
    public bool? CheckWarehouseCodeRequiredInWarehouseTransfer { get; private set; }
    /// <summary> نوع بيانات الباركود </summary>
    public bool? BarcodeDataType { get; private set; }
    /// <summary> معامل وحدة الإدخال للوزن </summary>
    public int? InputUnitFactorWeight { get; private set; }
    /// <summary> توليد تسلسل تلقائي للصنف </summary>
    public bool? UseSequenceItemAuto { get; private set; }
    /// <summary> عرض باركود الصنف في المخزون </summary>
    public bool? ShowItemBarcodeInventory { get; private set; }
    /// <summary> استخدام باركود واحد للصنف </summary>
    public bool? UseOneBarcodeForItem { get; private set; }
    /// <summary> ربط المجموعات الفرعية </summary>
    public bool? ConnectSubGroups { get; private set; }
    /// <summary> اعتماد رقم الصنف ورقم الدفعة في الباركود </summary>
    public bool? ApprovedItemNoBatchNoInBarcode { get; private set; }
    /// <summary> توليد باركود لوحدة الحد الأدنى </summary>
    public bool? GenerateBarcodeMinUnit { get; private set; }
    /// <summary> إعادة تقييم المخزون </summary>
    public bool? UseInventoryReevaluate { get; private set; }
    /// <summary> عرض وحدة الوزن والمعامل في الحركات </summary>
    public int? ShowWeightUnitArgumentInTrans { get; private set; }
    /// <summary> التعامل مع الأصناف المستعملة </summary>
    public bool? DealWithItemUsed { get; private set; }
    /// <summary> طريقة احتساب الضريبة للأصناف المستعملة </summary>
    public bool? MethodVATCalcItemUsed { get; private set; }
    /// <summary> ربط الصنف بالدفعة </summary>
    public int? ConnectItemByBatch { get; private set; }
    /// <summary> طباعة السعر مع الضريبة </summary>
    public bool? PrintPriceWithTax { get; private set; }
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
    /// <summary> اعتماد سعر أصناف الكيت عند التجميع </summary>
    public bool? ApprovedKitItemPriceAssemble { get; private set; }
    /// <summary> إخفاء حساب الوارد </summary>
    public bool? HideIncomingAccount { get; private set; }
    /// <summary> اعتماد تسلسل رقم الدفعة وكود الصنف </summary>
    public bool? ApprovedBatchNoItemCodeSequence { get; private set; }
    /// <summary> تسلسل مستند التجميع </summary>
    public bool AssembleDocSerial { get; private set; }
    /// <summary> تسلسل تسوية المخزون </summary>
    public bool StockAdjustmentSerial { get; private set; }
    /// <summary> تفعيل تسلسل رقم QR </summary>
    public bool? UseQRCodeSerialNo { get; private set; }
    /// <summary> استخدام سعر الصنف بناء على تاريخ الانتهاء </summary>
    public bool? UseItemPriceByExpireDate { get; private set; }
    /// <summary> استخدام سعر الصنف بناء على رقم الدفعة </summary>
    public bool? UseItemPriceByBatchNo { get; private set; }
    /// <summary> بادئة الوزن في الباركود </summary>
    public string? WeightPrefix { get; private set; }
    /// <summary> طول باركود الوزن </summary>
    public short? WeightBarcodeLength { get; private set; }
    /// <summary> طول كود صنف الوزن </summary>
    public short? WeightItemLength { get; private set; }
    /// <summary> قيمة الوزن </summary>
    public int? WeightValue { get; private set; }
    /// <summary> علامة الوزن </summary>
    public bool? WeightFlag { get; private set; }
    /// <summary> إدراج الوحدة في الوزن </summary>
    public bool? WeightIncludeItemUnit { get; private set; }
    /// <summary> إزالة رقم من الوزن </summary>
    public bool? RemoveWeightDigit { get; private set; }
    /// <summary> تفعيل Checksum </summary>
    public bool? UseCheckSum { get; private set; }
    /// <summary> طول بادئة QR </summary>
    public bool? QRPrefixLength { get; private set; }
    /// <summary> طول GTIN في QR </summary>
    public bool? QRGTINLengthArgument { get; private set; }
    /// <summary> عدد أرقام الباركود في QR </summary>
    public short? NumberOfBarcodeDigitInQRCode { get; private set; }
    /// <summary> طول GTIN في QR </summary>
    public short? QRGTINLength { get; private set; }
    /// <summary> تفعيل الرقم التسلسلي في المبيعات فقط </summary>
    public bool? UseSerialNoForSalesOnly { get; private set; }
    /// <summary> نوع طريقة QR </summary>
    public bool? QRCodeMethodType { get; private set; }
    /// <summary> عدد الكميات اليدوية </summary>
    public short? NumberOfManualQty { get; private set; }
    /// <summary> توليد تسلسل تلقائي للدفعات </summary>
    public bool? UseBatchNoAutoSequence { get; private set; }
    /// <summary> عدم السماح بحذف المستندات المرتبطة بالرقم التسلسلي </summary>
    public bool? NotAllowDeleteDocConnectSerialNo { get; private set; }
    /// <summary> السماح بإدخال كمية جزئية للرقم التسلسلي </summary>
    public bool? AllowEnterPartQtySerialNo { get; private set; }
    /// <summary> نوع مستودع أصناف الكيت الصادر </summary>
    public bool? UseKitItemWarehouseTypeOut { get; private set; }
    /// <summary> تصنيف أصناف الكيت </summary>
    public bool? UseKitItemClassification { get; private set; }
    /// <summary> استخدام كمية التحضير حسب الباركود </summary>
    public bool? UsePreparationQtyByBarcode { get; private set; }
    /// <summary> إلزامي إدخال جزء من كود الصنف للبحث </summary>
    public bool? MandatoryEnterPartItemCodeSearch { get; private set; }
    /// <summary> قيمة الوزن للخدمة </summary>
    public int? WeightValueService { get; private set; }
    /// <summary> السعر شامل الضريبة للصنف الخدمي </summary>
    public bool? PriceIncludeVATServiceItem { get; private set; }
    /// <summary> تفعيل كمية التحضير </summary>
    public bool? UsePreparationQty { get; private set; }
    /// <summary> إلزامية أمر البيع في الصادر </summary>
    public bool? UseSOMandatoryInOutgoing { get; private set; }
    /// <summary> تنبيه عند تجاوز حد كمية المجموعة </summary>
    public bool? ShowGroupQtyLimitAlert { get; private set; }
    /// <summary> السماح بتكرار وحدة وحجم الصنف </summary>
    public bool? AllowDuplicateItemUnitSize { get; private set; }
    /// <summary> ربط مركز التكلفة بنشاط الصنف </summary>
    public bool? ConnectCostCenterItemActivity { get; private set; }
    /// <summary> ربط الحساب بالنشاط للصنف </summary>
    public bool? ConnectActivityAccountItemActivity { get; private set; }
    /// <summary> التحقق من نسبة تكلفة الوارد للعملية </summary>
    public bool? CheckIncomingCostPercentOperation { get; private set; }
    /// <summary> تكرار الصنف في المخزون الافتتاحي </summary>
    public bool? DuplicateItemInOpenStock { get; private set; }
    /// <summary> استخدام حركة الصنف في الصناديق </summary>
    public bool? UseItemBinMovement { get; private set; }
    /// <summary> احتساب كمية الوزن حسب السعر </summary>
    public bool? WeightCalcQtyByIncludePrice { get; private set; }
    /// <summary> إجبار الطول لسعر الوزن </summary>
    public short? WeightPriceForceLength { get; private set; }
    /// <summary> عدم السماح بطباعة صنف بدون باركود </summary>
    public bool? NotAllowPrintItemWithoutBarcode { get; private set; }
}