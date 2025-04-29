public class SalesInvoice
{
    /// <summary> نوع الفاتورة </summary>
    public short BillDocType { get; private set; }
    /// <summary> رقم الفاتورة </summary>
    public long BillNo { get; private set; }
    /// <summary> الرقم التسلسلي للفاتورة </summary>
    public long BillSerial { get; private set; }
    /// <summary> تاريخ الفاتورة </summary>
    public DateTime BillDate { get; private set; }
    /// <summary> رمز العملة </summary>
    public string BillCurrency { get; private set; }
    /// <summary> سعر صرف العملة </summary>
    public int? BillRate { get; private set; }
    /// <summary> سعر المخزون </summary>
    public int? StockRate { get; private set; }
    /// <summary> كود العميل </summary>
    public string? CustomerCode { get; private set; }
    /// <summary> اسم العميل </summary>
    public string? CustomerName { get; private set; }
    /// <summary> كود الحساب المحاسبي </summary>
    public string? AccountCode { get; private set; }
    /// <summary> رقم الشيك </summary>
    public long? ChequeNo { get; private set; }
    /// <summary> رقم السند </summary>
    public string? NoteNo { get; private set; }
    /// <summary> مبلغ الشيك </summary>
    public int? ChequeAmount { get; private set; }
    /// <summary> تاريخ استحقاق الشيك </summary>
    public DateTime? ChequeDueDate { get; private set; }
    /// <summary> تاريخ استحقاق الفاتورة </summary>
    public DateTime? BillDueDate { get; private set; }
    /// <summary> تم ترحيل الفاتورة (1=نعم) </summary>
    public bool? BillPost { get; private set; }
    /// <summary> مبلغ الخصم </summary>
    public int? DiscountAmount { get; private set; }
    /// <summary> مبلغ الخصم الرئيسي </summary>
    public int? DiscountAmountMaster { get; private set; }
    /// <summary> مبلغ الخصم التفصيلي </summary>
    public int? DiscountAmountDetail { get; private set; }
    /// <summary> مبلغ الخصم الرئيسي بعد الضريبة </summary>
    public int? DiscountAmountMasterVAT { get; private set; }
    /// <summary> ضريبة الخصم الرئيسي </summary>
    public int? VATDiscountMaster { get; private set; }
    /// <summary> مبالغ أخرى (مصاريف/خدمات) </summary>
    public int? OtherAmount { get; private set; }
    /// <summary> مبلغ الضريبة </summary>
    public int? VATAmount { get; private set; }
    /// <summary> إجمالي مبلغ الفاتورة </summary>
    public int? BillAmount { get; private set; }
    /// <summary> مبلغ القسيمة </summary>
    public int? CouponAmount { get; private set; }
    /// <summary> كود المستودع المرتبط </summary>
    public long? WarehouseCode { get; private set; }
    /// <summary> كود المنطقة </summary>
    public long? RegionCode { get; private set; }
    /// <summary> كود المندوب </summary>
    public string? SalesRepCode { get; private set; }
    /// <summary> رقم الموظف </summary>
    public long? EmployeeNo { get; private set; }
    /// <summary> رقم مرجعي إضافي </summary>
    public string? ReferenceNo { get; private set; }
    /// <summary> رقم الكاشير </summary>
    public long? CashNo { get; private set; }
    /// <summary> مركز التكلفة </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> رقم المشروع </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> رقم النشاط </summary>
    public string? ActivityNo { get; private set; }
    /// <summary> رقم بطاقة الائتمان </summary>
    public int? CreditCardNo { get; private set; }
    /// <summary> مبلغ بطاقة الائتمان </summary>
    public int? CreditCardAmount { get; private set; }
    /// <summary> هل تم الدفع بالبطاقة (1=نعم) </summary>
    public bool? CreditCard { get; private set; }
    /// <summary> نوع الفاتورة </summary>
    public int? SalesInvoiceType { get; private set; }
    /// <summary> عدد المرفقات </summary>
    public short? AttachCount { get; private set; }
    /// <summary> هل الفاتورة للتصدير </summary>
    public bool? Export { get; private set; }
    /// <summary> قيد الانتظار </summary>
    public bool? StandBy { get; private set; }
    /// <summary> رقم التحصيل </summary>
    public long? CollectionNo { get; private set; }
    /// <summary> حساب النقد الأجنبي </summary>
    public string? CashAccountFCC { get; private set; }
    /// <summary> رقم الكاشير الأجنبي </summary>
    public long? CashNoFCC { get; private set; }
    /// <summary> ملاحظات </summary>
    public string? Description { get; private set; }
    /// <summary> نسبة العمولة </summary>
    public int? CommissionPercent { get; private set; }
    /// <summary> أولوية التقرير </summary>
    public long? ReportPriority { get; private set; }
    /// <summary> تمت المعالجة (1=نعم) </summary>
    public bool? Processed { get; private set; }
    /// <summary> نوع الفاتورة (تجميع/مفرد) </summary>
    public bool? BillPY { get; private set; }
    /// <summary> تم الترحيل خارجيًا </summary>
    public int? ExternalPost { get; private set; }
    /// <summary> رقم التحميل </summary>
    public long? LoadNo { get; private set; }
    /// <summary> الرقم التسلسلي للتحميل </summary>
    public long? LoadSerial { get; private set; }
    /// <summary> مرجع التدقيق </summary>
    public bool? AuditRef { get; private set; }
    /// <summary> وصف مرجع التدقيق </summary>
    public string? AuditRefDesc { get; private set; }
    /// <summary> المستخدم لمرجع التدقيق </summary>
    public int? AuditRefUserId { get; private set; }
    /// <summary> تاريخ مرجع التدقيق </summary>
    public DateTime? AuditRefDate { get; private set; }
    /// <summary> رقم الفاتورة المرتبطة </summary>
    public long? BillNoConn { get; private set; }
    /// <summary> الرقم التسلسلي للفاتورة المرتبطة </summary>
    public long? BillSerConn { get; private set; }
    /// <summary> نوع احتساب الضريبة </summary>
    public int? TaxTypeNo { get; private set; }
    /// <summary> مبلغ الحساب المحاسبي </summary>
    public int? ACAmount { get; private set; }
    public string? Field1 { get; private set; }
    public string? Field2 { get; private set; }
    public string? Field3 { get; private set; }
    public string? Field4 { get; private set; }
    public string? Field5 { get; private set; }
    public string? Field6 { get; private set; }
    public string? Field7 { get; private set; }
    public string? Field8 { get; private set; }
    public string? Field9 { get; private set; }
    public string? Field10 { get; private set; }
    public string? Field11 { get; private set; }
    public string? Field12 { get; private set; }
    public string? Field13 { get; private set; }
    public string? Field14 { get; private set; }
    /// <summary> هاتف العميل </summary>
    public string? CustomerTel { get; private set; }
    /// <summary> عنوان العميل </summary>
    public string? CustomerAddress { get; private set; }
    /// <summary> اسم المستلم </summary>
    public string? ReceiveName { get; private set; }
    /// <summary> رقم مستند PDA </summary>
    public long? DocNoPDA { get; private set; }
    /// <summary> اسم جهاز PDA </summary>
    public string? PDAName { get; private set; }
    /// <summary> بطاقة ائتمان ثانية </summary>
    public int? CreditCardNoScnd { get; private set; }
    /// <summary> مبلغ البطاقة الثانية </summary>
    public int? CreditCardAmountScnd { get; private set; }
    /// <summary> بطاقة ائتمان ثالثة </summary>
    public int? CreditCardNoThrd { get; private set; }
    /// <summary> مبلغ البطاقة الثالثة </summary>
    public int? CreditCardAmountThrd { get; private set; }
    /// <summary> رقم السائق </summary>
    public long? DriverNo { get; private set; }
    /// <summary> خصم إضافي رئيسي </summary>
    public int? AddDiscountAmountMaster { get; private set; }
    /// <summary> خصم إضافي تفصيلي </summary>
    public int? AddDiscountAmountDetail { get; private set; }
    /// <summary> خصم على المبالغ الأخرى </summary>
    public int? OtherAmountDiscount { get; private set; }
    /// <summary> المبلغ المدفوع </summary>
    public int? PaidAmount { get; private set; }
    /// <summary> الفاتورة مدفوعة (1=نعم) </summary>
    public bool? PaidBill { get; private set; }
    /// <summary> المستخدم الذي دفع </summary>
    public int? PaidUserId { get; private set; }
    /// <summary> تاريخ الدفع </summary>
    public DateTime? PaidDate { get; private set; }
    /// <summary> تم استلام فاتورة (1=نعم) </summary>
    public bool? ReceiveInvoiceBill { get; private set; }
    /// <summary> مستخدم استلام الفاتورة </summary>
    public int? ReceiveInvoiceUserId { get; private set; }
    /// <summary> تاريخ استلام الفاتورة </summary>
    public DateTime? ReceiveInvoiceDate { get; private set; }
    /// <summary> تم تقييم الفاتورة (1=نعم) </summary>
    public bool? BillValued { get; private set; }
    /// <summary> تاريخ التقييم </summary>
    public DateTime? ValueDate { get; private set; }
    /// <summary> ترحيل نقطة البيع </summary>
    public bool? POSPost { get; private set; }
    /// <summary> رقم مستند مرجعي للائتمان </summary>
    public long? CreditDocNoRef { get; private set; }
    /// <summary> فاتورة بدون مبالغ أخرى تلقائية </summary>
    public bool? BillWithoutAutoOtherAmt { get; private set; }
    /// <summary> تم تقييم الائتمان (1=نعم) </summary>
    public bool? CreditValued { get; private set; }
    /// <summary> تقييم ائتمان ثاني </summary>
    public bool? CreditValuedScnd { get; private set; }
    /// <summary> تقييم ائتمان ثالث </summary>
    public bool? CreditValuedThrd { get; private set; }
    /// <summary> رقم مستند مرجعي ثاني للائتمان </summary>
    public long? CreditDocNoRefScnd { get; private set; }
    /// <summary> رقم مستند مرجعي ثالث للائتمان </summary>
    public long? CreditDocNoRefThrd { get; private set; }
    /// <summary> تاريخ تقييم الائتمان </summary>
    public DateTime? CreditValueDate { get; private set; }
    /// <summary> تاريخ تقييم الائتمان الثاني </summary>
    public DateTime? CreditValueDateScnd { get; private set; }
    /// <summary> تاريخ تقييم الائتمان الثالث </summary>
    public DateTime? CreditValueDateThrd { get; private set; }
    /// <summary> عمولة البطاقة الائتمانية </summary>
    public int? CreditCardCommissionPer { get; private set; }
    /// <summary> عمولة البطاقة الثانية </summary>
    public int? CreditCardCommissionPerScnd { get; private set; }
    /// <summary> عمولة البطاقة الثالثة </summary>
    public int? CreditCardCommissionPerThrd { get; private set; }
    /// <summary> رقم عرض السعر الترويجي </summary>
    public long? QuotationPromotionNo { get; private set; }
    /// <summary> تسلسل عرض السعر الترويجي </summary>
    public long? QuotationPromotionSer { get; private set; }
    /// <summary> سجل عرض السعر الترويجي </summary>
    public long? QuotationPromotionRecordNo { get; private set; }
    /// <summary> كود العرض الترويجي </summary>
    public string? PromotionCode { get; private set; }
    /// <summary> رقم فرع المستند </summary>
    public int? DocBranchNo { get; private set; }
    public int? CmpnyNo { get; private set; }
    public long? MobileNo { get; private set; }
    public int? SendTelSuccess { get; private set; }
    public int? SendTelResultcode { get; private set; }
    public bool? NotUseQutPrm { get; private set; }
    public long? InsrnceCmpNo { get; private set; }
    public int? InsrnceBnfNo { get; private set; }
    public string? InsrncePrsonNm { get; private set; }
    public string? InsrnceCardNo { get; private set; }
    public string? InsrnceCardNoFmly { get; private set; }
    public short? InsrnceRltnTyp { get; private set; }
    public string? InsrnceClssNo { get; private set; }
    public int? InsrnceLoadPer { get; private set; }
    public string? InsrnceDiagnosis { get; private set; }
    public int? InsrnceMdclNo { get; private set; }
    public string? InsrnceApprvdCode { get; private set; }
    public int? InsrnceCshAmt { get; private set; }
    public int? CommAmtDtl { get; private set; }
    public bool? ConnSiWithOutgong { get; private set; }
    public string? CCodeCsh { get; private set; }
    public bool? CpnFlg { get; private set; }
    public bool? CstGcc { get; private set; }
    public string? RecNote { get; private set; }
    public string? TankCode { get; private set; }
    public int? PointRplcAmt { get; private set; }
    /// <summary> ضريبة مبالغ أخرى </summary>
    public int? VATAmountOther { get; private set; }
    /// <summary> الرقم الضريبي للعميل </summary>
    public string? CustomerTaxCode { get; private set; }
    /// <summary> تاريخ العقد </summary>
    public DateTime? ContractDate { get; private set; }
    /// <summary> رقم العقد </summary>
    public string? ContractNo { get; private set; }
    /// <summary> رقم خصم بطاقة الائتمان </summary>
    public string? CreditDiscountNo { get; private set; }
    /// <summary> نسبة خصم بطاقة الائتمان </summary>
    public int? CreditDiscountPercent { get; private set; }
    /// <summary> تسلسل العقد </summary>
    public long? DocSerialContract { get; private set; }
    /// <summary> رقم دفعة العقد </summary>
    public long? ContractBatchNo { get; private set; }
    /// <summary> نوع النقطة </summary>
    public int? PointTypeNo { get; private set; }
    /// <summary> نوع حساب النقاط </summary>
    public bool? PointCalcTypeNo { get; private set; }
    /// <summary> عدد النقاط </summary>
    public int? PointCount { get; private set; }
    /// <summary> إجمالي عدد النقاط </summary>
    public int? PointCountAll { get; private set; }
    /// <summary> عدد نقاط الاستبدال </summary>
    public int? PointReplaceCount { get; private set; }
    /// <summary> مبلغ مساعد </summary>
    public int? AssistantAmount { get; private set; }
    /// <summary> مبلغ الخصم بعد الضريبة </summary>
    public int? DiscountAmountAfterVAT { get; private set; }
    /// <summary> طريقة حساب مبلغ تحميل التأمين </summary>
    public bool? InsuranceLoadAmountMethod { get; private set; }
    public string? AcCode { get; private set; }
    /// <summary> تفاصيل كود الحساب </summary>
    public string? AccountCodeDetail { get; private set; }
    /// <summary> نوع تفاصيل الحساب </summary>
    public short? AccountDetailType { get; private set; }
    /// <summary> حساب الدفع </summary>
    public int? PaymentAccount { get; private set; }
    /// <summary> المستخدم الذي أضاف السطر </summary>
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> المستخدم الذي عدل السطر </summary>
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> عدد مرات التعديل </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> مستخدم الترحيل </summary>
    public int? PostUserId { get; private set; }
    /// <summary> تاريخ الترحيل </summary>
    public DateTime? PostDate { get; private set; }
    /// <summary> مستخدم إلغاء الترحيل </summary>
    public int? UnpostUserId { get; private set; }
    /// <summary> تاريخ إلغاء الترحيل </summary>
    public DateTime? UnpostDate { get; private set; }
    /// <summary> رقم الشركة </summary>
    public short CompanyNo { get; private set; }
    /// <summary> رقم الفرع </summary>
    public int BranchNo { get; private set; }
    /// <summary> السنة المالية للفرع </summary>
    public short? BranchYear { get; private set; }
    /// <summary> مستخدم الفرع </summary>
    public short? BranchUser { get; private set; }
    /// <summary> الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public bool? ClcTaxInsrncCmpnyFlg { get; private set; }
    public string? PtntNo { get; private set; }
    public string? DctrNo { get; private set; }
    public bool? PtntTyp { get; private set; }
    public long? DocNoAdmson { get; private set; }
    public long? DocSrlAdmson { get; private set; }
    public string? DocSerExtrnl { get; private set; }
    public bool? CnclFlg { get; private set; }
    public bool? ClcVatPriceTyp { get; private set; }
    public bool? OutBillTyp { get; private set; }
    public string? SfdaDctrNo { get; private set; }
    public string? SfdaPtntId { get; private set; }
    public string? SfdaPrspctNo { get; private set; }
    public DateTime? SfdaPrspctDate { get; private set; }
    public short? RmsBillDocType { get; private set; }
    public bool? RmsFreeFlg { get; private set; }
    public int? CrCardMaxCommAmt { get; private set; }
    public int? CrCardMaxCommAmtScnd { get; private set; }
    public int? CrCardMaxCommAmtThrd { get; private set; }
    public int? HrsDocNoRef { get; private set; }
    public int? HrsDocTypeRef { get; private set; }
    public int? HrsDocSerRef { get; private set; }
    public bool? ClcTaxFreeQtyFlg { get; private set; }
    public int? InsrnceAddLmtMst { get; private set; }
    public bool? InsrnceMdcnChronicFlg { get; private set; }
    public int? DocMSq { get; private set; }
    public int? AdvncPymntPrcntCntrct { get; private set; }
    public string? CrCardCstNo { get; private set; }
    public string? CrCardCstNoScnd { get; private set; }
    public string? CrCardCstNoThrd { get; private set; }
    public long? CrCardDocNoRef { get; private set; }
    public long? CrCardDocNoRefScnd { get; private set; }
    public long? CrCardDocNoRefThrd { get; private set; }
    public string? CrCardDsc { get; private set; }
    public string? CrCardDscScnd { get; private set; }
    public string? CrCardDscThrd { get; private set; }
    public DateTime? AdDateClk { get; private set; }
    public short? BillStatTyp { get; private set; }
    public int? InsrnceAddLmtDoc { get; private set; }
    public int? InsrnceAddLmtDtl { get; private set; }
    public int? InsrnceLmtAmtLocDoc { get; private set; }
    public bool? WebSrvcTrnsfrDataFlg { get; private set; }
    public string? WebSrvcUuid { get; private set; }
    public AccountCurrency AccountCurrency { get; private set; } // Navigation
    public Project Project { get; private set; } // Navigation
    public Region Region { get; private set; } // Navigation
    public CreditCardType CreditCardType { get; private set; } // Navigation
    public Customer Customer { get; private set; } // Navigation
    public Warehouse Warehouse { get; private set; } // Navigation
    public ICollection<SalesInvoiceDetail> SalesInvoiceDetails { get; private set; } // Inverse Navigation
}