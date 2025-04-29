public class PrivilegeFixed
{
    /// <summary> رقم المستخدم </summary>
    public int? UserId { get; private set; }
    /// <summary> نوع حد الائتمان </summary>
    public bool? CreditLimitType { get; private set; }
    /// <summary> السماح بالدفع اليدوي </summary>
    public bool? ManualPayment { get; private set; }
    /// <summary> حد الخصم على الفاتورة </summary>
    public int? InvoiceDiscountLimit { get; private set; }
    /// <summary> إخفاء التكلفة </summary>
    public bool? HideCost { get; private set; }
    /// <summary> نوع حد السعر </summary>
    public bool? PriceLimitType { get; private set; }
    /// <summary> السماح بدفع الكمية المتاحة </summary>
    public bool? PayAvailableQty { get; private set; }
    /// <summary> دفع أقل كمية للصنف </summary>
    public bool? PayItemMinQty { get; private set; }
    /// <summary> صلاحية تقارير الفواتير </summary>
    public bool? InvoiceReport { get; private set; }
    /// <summary> صلاحية أقل سعر </summary>
    public bool? LowPrice { get; private set; }
    /// <summary> صلاحية أعلى سعر </summary>
    public bool? HighPrice { get; private set; }
    /// <summary> عرض تقارير الحسابات الرئيسية </summary>
    public bool? ShowMainAccReport { get; private set; }
    /// <summary> تحديث الكمية المجانية </summary>
    public bool? UpdateFreeQty { get; private set; }
    /// <summary> تحديث سماح خصم على الصنف </summary>
    public bool? UpdateItemAllowDiscount { get; private set; }
    /// <summary> استخدام أمر بيع في فاتورة بيع </summary>
    public bool? UseSOinSI { get; private set; }
    /// <summary> تحديث بيانات الفواتير </summary>
    public bool? UpdateBillsData { get; private set; }
    /// <summary> تحديث مبلغ الكيمب </summary>
    public bool? UpdateKimbAmount { get; private set; }
    /// <summary> طباعة المستند </summary>
    public bool? PrintDoc { get; private set; }
    /// <summary> استعراض إدخال المستند </summary>
    public bool? UserViewDocEntry { get; private set; }
    /// <summary> عرض تقارير العملاء اليومية </summary>
    public int? ShowARReportDay { get; private set; }
    /// <summary> السماح بفواتير الكمية المجانية فقط </summary>
    public bool? AllowBillFQtyOnly { get; private set; }
    /// <summary> السماح بإدخال تكلفة صفرية </summary>
    public bool? AllowEnterZeroCost { get; private set; }
    /// <summary> صلاحية حد السعر </summary>
    public bool? PriceLimitPrivilege { get; private set; }
    /// <summary> التحقق من فترة الائتمان </summary>
    public bool? CheckCreditPeriod { get; private set; }
    /// <summary> تعبئة الفواتير دفعة واحدة </summary>
    public bool? FillOutBillsOnce { get; private set; }
    /// <summary> اختيار نوع المستند </summary>
    public bool? SelectDocType { get; private set; }
    /// <summary> صلاحية حد الحساب </summary>
    public bool? AccLimitPrivilege { get; private set; }
    /// <summary> إظهار تكلفة المخزون في الخصم </summary>
    public bool? ShowStockCostInQtyDisc { get; private set; }
    /// <summary> صلاحية سند دفع رئيسي للحساب </summary>
    public bool? PayVoucherMasterAccPrivilege { get; private set; }
    /// <summary> صلاحية سند قبض رئيسي للحساب </summary>
    public bool? ReceiveVoucherMasterAccPrivilege { get; private set; }
    /// <summary> السماح بتعديل اسم الحقل </summary>
    public bool? AllowModifyFieldName { get; private set; }
    /// <summary> التحقق من القائمة السوداء للعملاء </summary>
    public bool? CheckCustomerBlacklist { get; private set; }
    /// <summary> تعديل خصم الصنف </summary>
    public bool? ModifyItemDiscount { get; private set; }
    /// <summary> أعلى نسبة خصم للصنف </summary>
    public int? MaxDiscountItemPercent { get; private set; }
    /// <summary> فترة تحديث المستند بالساعات </summary>
    public int? UpdateDocHoursPeriod { get; private set; }
    /// <summary> فترة تحديث المستند بالأيام </summary>
    public short? UpdateDocDayPeriod { get; private set; }
    /// <summary> فترة حذف المستند بالساعات </summary>
    public int? DeleteDocHoursPeriod { get; private set; }
    /// <summary> فترة حذف المستند بالأيام </summary>
    public short? DeleteDocDayPeriod { get; private set; }
    /// <summary> السماح بالاستيراد من إكسل </summary>
    public bool? AllowImportXLS { get; private set; }
    /// <summary> السماح بزر استدعاء التقرير </summary>
    public bool? AllowCallReportButton { get; private set; }
    /// <summary> تحديث عدم السماح بالخصم على الصنف </summary>
    public bool? UpdateItemNotAllowDiscount { get; private set; }
    /// <summary> حد الخصم الإضافي على الفاتورة </summary>
    public int? InvoiceAdditionalDiscountLimit { get; private set; }
    /// <summary> التحقق من صلاحية تقارير الحسابات </summary>
    public bool? CheckPrivilegeAccountsReport { get; private set; }
    /// <summary> التحقق من صلاحية تقارير مراكز التكلفة </summary>
    public bool? CheckPrivilegeCostCentersReport { get; private set; }
    /// <summary> التحقق من صلاحية تقارير المشاريع </summary>
    public bool? CheckPrivilegeProjectsReport { get; private set; }
    /// <summary> التحقق من صلاحية تقارير الفروع </summary>
    public bool? CheckPrivilegeBranchReport { get; private set; }
    /// <summary> التحقق من نسبة المرتجع </summary>
    public bool? CheckReturnPercent { get; private set; }
    /// <summary> تحديث نوع الدفع في فاتورة البيع </summary>
    public bool? UpdateSIPayType { get; private set; }
    /// <summary> تغيير سعر أمر الشراء </summary>
    public bool? ChangePricePI { get; private set; }
    /// <summary> السماح بالخصم في فترة الائتمان فقط </summary>
    public bool? AddDiscountInCreditPeriodOnly { get; private set; }
    /// <summary> التحقق من صلاحية كشف الحساب </summary>
    public bool? CheckPrivilegeAccountsStatement { get; private set; }
    /// <summary> التحقق من صلاحية كشف مراكز التكلفة </summary>
    public bool? CheckPrivilegeCostCentersStatement { get; private set; }
    /// <summary> التحقق من صلاحية كشف المشاريع </summary>
    public bool? CheckPrivilegeProjectsStatement { get; private set; }
    /// <summary> السماح بالطباعة قبل المراجعة </summary>
    public bool? AllowPrintDocBeforeAudit { get; private set; }
    /// <summary> السماح بإلغاء مراجعة الحساب </summary>
    public bool? AllowCancelAuditRef { get; private set; }
    /// <summary> استخدام قيد اليومية التقسيطي </summary>
    public bool? UseInstallJV { get; private set; }
    /// <summary> استخدام سند قبض تقسيطي </summary>
    public bool? UseInstallReceipt { get; private set; }
    /// <summary> استخدام سند دفع تقسيطي </summary>
    public bool? UseInstallPayment { get; private set; }
    /// <summary> السماح بتحديث التاريخ تلقائيا </summary>
    public bool? AllowUpdateAutoDate { get; private set; }
    /// <summary> السماح بتحديث سعر الطلب في الفاتورة </summary>
    public bool? AllowUpdateOrderPriceInBill { get; private set; }
    /// <summary> عرض الكمية المتاحة في الطلب </summary>
    public bool? ShowAvailableQtyInReq { get; private set; }
    /// <summary> عرض الكمية المتاحة في النقل </summary>
    public bool? ShowAvailableQtyInTransfer { get; private set; }
    /// <summary> السماح بعرض اليومية </summary>
    public bool? AllowShowJournal { get; private set; }
    /// <summary> حد الخصم على الصنف </summary>
    public int? InvoiceDiscountLimitItem { get; private set; }
    /// <summary> استخدام مرتجع مع تحويل </summary>
    public bool? UseReturnWithTransfer { get; private set; }
    /// <summary> التحقق من صلاحية كشف النشاط </summary>
    public bool? CheckPrivilegeActivityStatement { get; private set; }
    /// <summary> التحقق من صلاحية تقارير النشاط </summary>
    public bool? CheckPrivilegeActivityReport { get; private set; }
    /// <summary> السماح بتجاوز مبلغ العقد في الفاتورة </summary>
    public bool? ExceedAmountContractInBill { get; private set; }
    /// <summary> عرض تكلفة المخزون في تقرير العملاء </summary>
    public bool? ShowStockCostARReport { get; private set; }
    /// <summary> السماح بحذف الصنف من فاتورة نقاط البيع </summary>
    public bool? AllowDeleteItemFromPOSBill { get; private set; }
    /// <summary> السماح بمبيعات دائنة للمدين </summary>
    public bool? AllowSalesDueDebit { get; private set; }
    /// <summary> السماح بمبيعات سابقة للمدين </summary>
    public bool? AllowSalesPrevDebit { get; private set; }
    /// <summary> التحقق من المنتج بعد الاستحقاق </summary>
    public bool? CheckProductAfterDue { get; private set; }
    /// <summary> استخدام اليومية المتوازنة </summary>
    public bool? UseBalancedACYJV { get; private set; }
    /// <summary> السماح بنسخ مستوى السعر </summary>
    public bool? AllowCopyPriceLevel { get; private set; }
    /// <summary> السماح بتغيير الكمية في نقاط البيع </summary>
    public bool? AllowChangePOSQty { get; private set; }
    /// <summary> السماح بتحديث كمية أمر الشراء </summary>
    public bool? AllowUpdateFillQtyPO { get; private set; }
    /// <summary> نسبة حد السعر </summary>
    public int? PriceLimitPercent { get; private set; }
    /// <summary> نسبة حد الائتمان </summary>
    public int? CreditLimitPercent { get; private set; }
    /// <summary> السماح بالفواتير المعلقة </summary>
    public bool? AllowHungBills { get; private set; }
    /// <summary> استخدام أمر التراجع Ctrl+U </summary>
    public bool? UseUndoCtrlU { get; private set; }
    /// <summary> رقم فاتورة المرتجع </summary>
    public bool? ReturnBillNo { get; private set; }
    /// <summary> طباعة الفاتورة السابقة </summary>
    public bool? PrintPrevBill { get; private set; }
    /// <summary> التحقق من كشف الفروع </summary>
    public bool? CheckPrivilegeBranchStatement { get; private set; }
    /// <summary> السماح بدفع للمورد برصيد صفر </summary>
    public bool? PaymentForVendorZeroCredit { get; private set; }
    /// <summary> عدم السماح بتعديل تفاصيل المستند بعد الحفظ </summary>
    public bool? NotAllowModifyDetailDocAfterSave { get; private set; }
    /// <summary> تعبئة تكلفة المخزون في سعر البيع </summary>
    public bool? FillStockCostIntoPriceSI { get; private set; }
    /// <summary> السماح بتحديث خصم فاتورة المرتجع </summary>
    public bool? AllowUpdateDiscountReturnBill { get; private set; }
    /// <summary> عرض تقرير النقدية العام يوميا </summary>
    public int? ShowGLCashReportDay { get; private set; }
    /// <summary> عرض الكمية والثمن الثابت في تقرير العملاء </summary>
    public bool? ShowAmountQtyStaticARReport { get; private set; }
    /// <summary> السماح بتحديث كمية الوزن </summary>
    public bool? AllowUpdateQtyWeight { get; private set; }
    /// <summary> إدخال السعر يدويا في المرتجع </summary>
    public bool? EnterPriceManualSR { get; private set; }
    /// <summary> السماح بخصم الصنف في العروض الترويجية </summary>
    public bool? AllowDiscountItemQutPrmSI { get; private set; }
    /// <summary> السماح بتعبئة الرقم التسلسلي </summary>
    public bool? AllowFillSerialNo { get; private set; }
    /// <summary> صلاحية حد الميزانية </summary>
    public bool? BudgetLimitPrivilege { get; private set; }
    /// <summary> السماح بحالة غير معتمد </summary>
    public bool? AllowUnapproved { get; private set; }
    /// <summary> إخفاء سعر الصنف في الباركود </summary>
    public bool? UseHidePriceItemBarcode { get; private set; }
    /// <summary> الحد الأعلى للأقساط في العملاء </summary>
    public short? ARMaxInstallment { get; private set; }
    /// <summary> السماح بتعديل نسبة السعر من التكلفة </summary>
    public bool? AllowModifyPercentPriceFromCost { get; private set; }
    /// <summary> الحد الأعلى للكمية المجانية للصنف </summary>
    public int? ARMaxAddFreeQtyItemPercent { get; private set; }
    /// <summary> طباعة فاتورة البيع تلقائياً بعد الحفظ </summary>
    public bool? ARAutoPrintSIAfterSave { get; private set; }
    /// <summary> طباعة فاتورة المرتجع تلقائياً بعد الحفظ </summary>
    public bool? ARAutoPrintSRAfterSave { get; private set; }
    /// <summary> إظهار رسالة للمستخدم قبل الحفظ </summary>
    public bool? UserShowMsgBeforeSave { get; private set; }
    /// <summary> استخدام أمر عمل في فاتورة بيع </summary>
    public bool? UseWOinSI { get; private set; }
    /// <summary> السماح بالتعديل فقط في الفواتير قيد الانتظار </summary>
    public bool? AllowUpdateStandbySIOnly { get; private set; }
    /// <summary> عرض صلاحية كشف الحساب </summary>
    public bool? DisplayPrivilegeAccountStatement { get; private set; }
    /// <summary> السماح بتحديث تسلسل العملاء </summary>
    public bool? AllowUpdateCustomerSequence { get; private set; }
    /// <summary> تعديل سند قبض الجوال </summary>
    public bool? ModifyMobileVoucherRcvDoc { get; private set; }
    /// <summary> السماح بتحديث نسبة الضريبة </summary>
    public bool? AllowUpdateVATPercent { get; private set; }
    /// <summary> استخدام تحميل المقطورة في فاتورة البيع </summary>
    public bool? UseTrailerLoadInSI { get; private set; }
    /// <summary> السماح بتجاوز سعر المورد </summary>
    public bool? AllowExceedVendorPrice { get; private set; }
    /// <summary> السماح بالفواتير المجانية في RMS </summary>
    public bool? UseFreeRMSInvoice { get; private set; }
    /// <summary> السماح بتغيير مبلغ خدمة التوصيل </summary>
    public int? AllowChangeDeliveryServiceAmount { get; private set; }
    /// <summary> تحديث الحد الأعلى الممكن </summary>
    public bool? UpdateMaxLimitPossible { get; private set; }
    /// <summary> السماح بتغيير سعر التأجير </summary>
    public bool? AllowChangeRentPrice { get; private set; }
    /// <summary> السماح بإلغاء ترحيل التأجير </summary>
    public bool? AllowUnpostRent { get; private set; }
    /// <summary> السماح بترحيل فترة التأجير </summary>
    public bool? AllowPostRentPeriod { get; private set; }
    /// <summary> السماح بتحديث تاريخ الخروج </summary>
    public bool? AllowUpdateDischargeDate { get; private set; }
    /// <summary> السماح بتحديث تاريخ التحويل </summary>
    public bool? AllowUpdateTransferDate { get; private set; }
    /// <summary> السماح لمريض خارجي برصيد صفر </summary>
    public bool? AllowOutPatientNoZeroBalance { get; private set; }
    /// <summary> السماح بإلغاء خروج المريض </summary>
    public bool? AllowCancelDischargePatient { get; private set; }
    /// <summary> السماح لمريض خارجي بدون أمر استثناء </summary>
    public bool? AllowOutPatientNoOrderExcept { get; private set; }
    /// <summary> السماح بطباعة النتائج غير المعتمدة </summary>
    public bool? AllowPrintResultUnverified { get; private set; }
    /// <summary> السماح بتحديث الدفع في القبول </summary>
    public bool? AllowUpdatePaymentInAdmission { get; private set; }
    /// <summary> عدم إظهار محتوى مجموعة الأصناف </summary>
    public bool? NotShowKitItemContent { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> المستخدم الذي أضاف السطر </summary>
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> المستخدم الذي عدل السطر </summary>
    public int? UpdatedUserId { get; private set; }
    /// <summary> عدد مرات التحديث </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    /// <summary> استخدام فواتير إطعام الموظفين في RMS </summary>
    public bool? UseStaffFeedingRMSInvoice { get; private set; }
    /// <summary> استخدام فواتير تلف RMS </summary>
    public bool? UseDamageRMSInvoice { get; private set; }
    /// <summary> استخدام فواتير ضيافة RMS </summary>
    public bool? UseHospitalityRMSInvoice { get; private set; }
    /// <summary> السماح بحذف الفواتير المعلقة </summary>
    public int? AllowDeleteHungBills { get; private set; }
    /// <summary> عدم السماح بتحديث كود العميل لفواتير المرضى </summary>
    public bool? NotAllowUpdateCustomerCodePatientBills { get; private set; }
    /// <summary> السماح بمرتجع نقاط البيع المعتمد </summary>
    public int? AllowApprovedPosReturnBill { get; private set; }
    /// <summary> السماح بطباعة آخر فاتورة </summary>
    public int? AllowPrintLastBill { get; private set; }
    /// <summary> السماح بتغيير سعر أمر الشراء المرتبط بالدخل </summary>
    public bool? AllowChangePIPRCConnectIncome { get; private set; }
    /// <summary> السماح بفواتير العملاء برصيد أكبر </summary>
    public bool? AllowOutBillCustomerLargerBalance { get; private set; }
    /// <summary> السماح بتحديث سعر السرير </summary>
    public bool? AllowUpdateBedPrice { get; private set; }
    /// <summary> عرض نسبة الطبيب في الفاتورة </summary>
    public bool? ShowDoctorPercentInBill { get; private set; }
    /// <summary> السماح بإدخال الوزن يدويا في أمر البيع </summary>
    public bool? AllowEnterWeightManualSO { get; private set; }
    /// <summary> السماح بتحديث سعر صرف المخزون في التحويل </summary>
    public bool? AllowUpdateStockExchangeRateTransfer { get; private set; }
    /// <summary> السماح بتجاوز حد مرتجع التأمين </summary>
    public bool? AllowExceedMaxProductReturnInsurance { get; private set; }
    /// <summary> السماح بطباعة آخر فاتورة RMS </summary>
    public bool? AllowPrintLastRMSInvoice { get; private set; }
    /// <summary> تحديث نوع الدفع في أمر الشراء </summary>
    public bool? UpdatePIPayType { get; private set; }
    /// <summary> عرض السعر في فاتورة الصادر </summary>
    public bool? ShowPriceInOutBill { get; private set; }
    /// <summary> السماح بحذف صنف من فاتورة RMS </summary>
    public bool? AllowDeleteItemFromRMSBill { get; private set; }
    /// <summary> عرض الكمية المتاحة في الجرد اليدوي </summary>
    public bool? ShowAvailableQtyInManualInventory { get; private set; }
    /// <summary> السماح بأمر دواء بدون تحقق من الكمية </summary>
    public bool? AllowDrugOrderWithoutQtyCheck { get; private set; }
    /// <summary> التحقق من رصيد القبول النقدي في الفاتورة </summary>
    public bool? CheckBalancePatientAdmissionCashInBill { get; private set; }
    /// <summary> السماح بمرتجع من كاشير آخر </summary>
    public bool? AllowReturnBillOtherCashier { get; private set; }
    /// <summary> إزالة السماح بتحديث وصف السند </summary>
    public bool? RemoveAllowUpdateVoucherDesc { get; private set; }
    /// <summary> فتح النظام أكثر من مرة </summary>
    public int? OpenSystemMoreOnce { get; private set; }
    /// <summary> عرض الرصيد في التحويلات </summary>
    public bool? GLSShowBalanceInTrans { get; private set; }
    /// <summary> السماح بتعديل المستند بعد الطباعة </summary>
    public bool? AllowModifyDocAfterPrint { get; private set; }
    /// <summary> السماح بحذف المستند بعد الطباعة </summary>
    public bool? AllowDeleteDocAfterPrint { get; private set; }
    /// <summary> استخدام حجز كمية البيع بدون إخراج في الفاتورة </summary>
    public bool? UseReserveSalesQtyNoOutInInvoice { get; private set; }
    /// <summary> إصدار أمر عمل خارجي في تخطيط الاحتياجات </summary>
    public bool? MRP_MPS_IssueExternalWO { get; private set; }
    /// <summary> إنشاء تحويل استلام متعدد في MRP </summary>
    public bool? MRP_CreateMultiReceiveTransfer { get; private set; }
    /// <summary> إصدار تحويل خارجي في SFC </summary>
    public bool? MRP_SFC_IssueExternalTransfer { get; private set; }
    /// <summary> اعتماد أمر العمل في MPS </summary>
    public bool? MRP_MPS_ApproveWO { get; private set; }
    /// <summary> اعتماد MRQ في SFC </summary>
    public bool? MRP_SFC_ApproveMRQ { get; private set; }
    /// <summary> اعتماد MRC في SFC </summary>
    public bool? MRP_SFC_ApproveMRC { get; private set; }
    /// <summary> اعتماد SFC في SFC </summary>
    public bool? MRP_SFC_ApproveSFC { get; private set; }
    /// <summary> اعتماد MDV في SFC </summary>
    public bool? MRP_SFC_ApproveMDV { get; private set; }
    /// <summary> اعتماد MRT في SFC </summary>
    public bool? MRP_SFC_ApproveMRT { get; private set; }
    /// <summary> حد زمني لإلغاء الطلب في RMS </summary>
    public int? RMSLimitTimeCancelOrder { get; private set; }
    /// <summary> السماح بكمية شيف سالبة في RMS </summary>
    public bool? RMSAllowMinusChefQty { get; private set; }
    /// <summary> السماح بإلغاء الكمية قيد التنفيذ في RMS </summary>
    public bool? RMSAllowCancelUnderProcessQty { get; private set; }
    /// <summary> السماح بتحديث نوع أمر الشراء للفاتورة </summary>
    public int? AllowUpdatePOToBillType { get; private set; }
    /// <summary> السماح بتحديث نوع عرض السعر لأمر الشراء </summary>
    public int? AllowUpdateQuoteToPOType { get; private set; }
    /// <summary> الشراء بوحدة الشراء فقط </summary>
    public int? PurchaseByPurchaseUnitOnly { get; private set; }
    /// <summary> عرض متوسط خصم الصنف في المشتريات </summary>
    public bool? ShowItemDiscountAvgAPSI { get; private set; }
    /// <summary> السماح بتاريخ انتهاء جديد للمبيعات </summary>
    public bool? AllowSaleNewExpDate { get; private set; }
    /// <summary> السماح بإدخال كمية مجانية في أمر البيع </summary>
    public bool? AllowEnterFreeQtySO { get; private set; }
    /// <summary> عرض هامش ربح تكلفة المخزون في المبيعات </summary>
    public bool? ShowStockCostProfitMarginSale { get; private set; }
    /// <summary> استخدام البحث باسم الصنف عربي </summary>
    public bool? UseSearchItemNameArabic { get; private set; }
    /// <summary> معيار بحث الصنف </summary>
    public bool? SearchItemCriteria { get; private set; }
    /// <summary> استخدام أرشفة الملفات في قاعدة البيانات </summary>
    public bool? UseArchiveFileInDB { get; private set; }
    /// <summary> السماح بتعبئة جميع الأصناف في المرتجع </summary>
    public bool? AllowFillAllItemToReturnBill { get; private set; }
    /// <summary> عدد مرات الطباعة للفاتورة </summary>
    public short? PrintCountForBill { get; private set; }
    /// <summary> السماح بتجاوز حد بيع الصنف </summary>
    public bool? AllowExceedLimitSaleItem { get; private set; }
    /// <summary> عرض الرصيد في جرد الصندوق </summary>
    public bool? ShowBalanceInCashInventory { get; private set; }
    /// <summary> السماح بتحديث عمولة المندوبين </summary>
    public bool? GLSAllowUpdateRepresentativesCommission { get; private set; }
    /// <summary> إخفاء الرصيد الافتتاحي في كشف الحساب </summary>
    public bool? GLSStatementHideOpenBalance { get; private set; }
    /// <summary> صلاحية تغيير تكلفة المنتج في MRP </summary>
    public bool? MRPVaryProductCostPrivilege { get; private set; }
    /// <summary> عرض شاشة تنبيه بعد الدخول </summary>
    public bool? ShowAlertScreenAfterLogin { get; private set; }
    /// <summary> السماح بطباعة السعر مع الضريبة </summary>
    public bool? AllowPrintPriceWithTax { get; private set; }
    /// <summary> نسبة تعويض الكمية </summary>
    public short? HAddPercentCompensateQty { get; private set; }
    /// <summary> السماح بإنقاص الكمية </summary>
    public int? AllowDecreaseQty { get; private set; }
    /// <summary> السماح بمنتج فعلي أقل من المعياري في SFC </summary>
    public bool? MRPSFCAllowActualProductLessStd { get; private set; }
    /// <summary> السماح بالتصدير إلى إكسل </summary>
    public bool? AllowExportXLS { get; private set; }
    /// <summary> صرف الصنف بالرقم التسلسلي مع الباركود </summary>
    public bool? OutItemSerialWithBarcode { get; private set; }
    /// <summary> إلزامية رقم فاتورة الدفع </summary>
    public bool? MandatoryBillNoPayment { get; private set; }
    public User User { get; private set; } // Navigation
}