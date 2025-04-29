public class ParameterGL
{
    /// <summary> رقم السطر/المعيار </summary>
    public bool? ParameterNo { get; private set; }
    /// <summary> توليد سند محاسبي تلقائي </summary>
    public bool GenerateGLDocument { get; private set; }
    /// <summary> السماح بحذف المستندات </summary>
    public bool AllowDocDeleteNo { get; private set; }
    /// <summary> توليد سند بتاريخ معين </summary>
    public bool? DateGenerateGL { get; private set; }
    /// <summary> إعدادات تاريخ السند </summary>
    public bool DateSettingGL { get; private set; }
    /// <summary> طول كود الحساب </summary>
    public short AccountCodeLength { get; private set; }
    /// <summary> نوع كود الحساب </summary>
    public bool AccountCodeType { get; private set; }
    /// <summary> طول كود مركز التكلفة </summary>
    public short CostCenterLength { get; private set; }
    /// <summary> نوع كود مركز التكلفة </summary>
    public bool CostCenterCodeType { get; private set; }
    /// <summary> تفعيل الحساب الفرعي </summary>
    public bool? AccountSub { get; private set; }
    /// <summary> القيود قيد الانتظار </summary>
    public bool JournalStandBy { get; private set; }
    /// <summary> تفعيل العملات </summary>
    public bool? ForCurrency { get; private set; }
    /// <summary> عدد الكسور العشرية </summary>
    public short NoOfDecimal { get; private set; }
    /// <summary> طلب رقم مرجعي </summary>
    public bool RequestRefNoGL { get; private set; }
    /// <summary> طلب وصف السند </summary>
    public bool RequestDescGL { get; private set; }
    /// <summary> احتياطي النقدية </summary>
    public bool CashReserve { get; private set; }
    /// <summary> التعامل بالعملة المحلية </summary>
    public bool HandleLocalAmount { get; private set; }
    /// <summary> نوع العملة </summary>
    public bool CurrencyType { get; private set; }
    /// <summary> استخدام الدخل النقدي </summary>
    public bool? UseCashIncome { get; private set; }
    /// <summary> نوع ترحيل الشيكات </summary>
    public bool PostChequeType { get; private set; }
    /// <summary> نوع ترحيل الشيكات للمورد </summary>
    public bool? PostChequeTypeVendor { get; private set; }
    /// <summary> السماح بحذف القيود </summary>
    public bool UseDeleteGL { get; private set; }
    /// <summary> السماح بتعديل القيود </summary>
    public bool? UseModifyGL { get; private set; }
    /// <summary> استخدام الضمانات </summary>
    public bool UseGuaranty { get; private set; }
    /// <summary> ربط الحساب بمركز التكلفة </summary>
    public bool? ConnectAccountCostCenter { get; private set; }
    /// <summary> ربط الحساب بالمشروع </summary>
    public bool ConnectAccountProject { get; private set; }
    /// <summary> نوع ترحيل الشيكات للمدين </summary>
    public bool PostChequeTypeReceivable { get; private set; }
    /// <summary> نوع ترحيل الشيكات للدائن </summary>
    public bool PostChequeTypePayable { get; private set; }
    /// <summary> تفعيل KIMB </summary>
    public bool UseKIMB { get; private set; }
    /// <summary> تفعيل النقدية في القيد </summary>
    public bool UseCashInJV { get; private set; }
    /// <summary> تفعيل وسيط البنك في القيد </summary>
    public bool UseBankMediatorInJV { get; private set; }
    /// <summary> تفعيل حساب المخزون في القيد </summary>
    public bool? UseInventoryAccountInJV { get; private set; }
    /// <summary> تعبئة ملاحظات القيد المتعددة </summary>
    public bool MultiFillJVNote { get; private set; }
    /// <summary> الحساب الرئيسي لا يشمل الفرعي </summary>
    public bool ParentNotIncludeAccount { get; private set; }
    /// <summary> مركز التكلفة الرئيسي لا يشمل الفرعي </summary>
    public bool ParentNotIncludeCostCenter { get; private set; }
    /// <summary> تسلسل ملاحظات السند </summary>
    public bool NoteSerial { get; private set; }
    /// <summary> نوع حد الحساب </summary>
    public bool GLLimitType { get; private set; }
    /// <summary> إدراج اسم مركز التكلفة في الوصف </summary>
    public bool DescIncludeCCName { get; private set; }
    /// <summary> تفعيل الشيكات في القيد </summary>
    public bool UseChequeInJV { get; private set; }
    /// <summary> نوع إغلاق الأرباح والخسائر </summary>
    public bool PLCloseType { get; private set; }
    /// <summary> نوع إغلاق اختلاف العملة </summary>
    public bool DiffCurrencyCloseType { get; private set; }
    /// <summary> السماح بتكرار حساب النقدية </summary>
    public bool? AllowDuplicateCashAccount { get; private set; }
    /// <summary> السماح بتكرار حساب البنك </summary>
    public bool AllowDuplicateBankAccount { get; private set; }
    /// <summary> ربط النقدية والبنك بالفرع </summary>
    public bool CashBankConnectBranch { get; private set; }
    /// <summary> صلاحية سند دفع رئيسي للحساب </summary>
    public bool? UsePayVoucherMasterAccountPrivilege { get; private set; }
    /// <summary> صلاحية سند قبض رئيسي للحساب </summary>
    public bool? UseReceiveVoucherMasterAccountPrivilege { get; private set; }
    /// <summary> طلب رقم العمود للقبض </summary>
    public bool? RequestColumnNoReceive { get; private set; }
    /// <summary> طلب نوع سند </summary>
    public bool? RequestVoucherTypeNo { get; private set; }
    /// <summary> ربط طلب الدفع </summary>
    public bool? ConnectPaymentRequest { get; private set; }
    /// <summary> ربط طلب القبض </summary>
    public bool? ConnectReceiptRequest { get; private set; }
    /// <summary> نوع سعر الصرف للدفع </summary>
    public bool? PaymentRateType { get; private set; }
    /// <summary> نوع تسلسل سند القبض </summary>
    public short? ReceiptSerialType { get; private set; }
    /// <summary> ربط مركز التكلفة بالمشروع </summary>
    public bool? ConnectCostCenterProject { get; private set; }
    /// <summary> ربط المشروع بالنشاط </summary>
    public bool? ConnectProjectActivity { get; private set; }
    /// <summary> السماح بسندات بقيمة صفرية </summary>
    public bool? AllowVoucherZero { get; private set; }
    /// <summary> مستوى الحسابات الفرعية </summary>
    public short? SubAccountLevel { get; private set; }
    /// <summary> طريقة تعبئة نموذج الدفع بالساعات </summary>
    public bool? FillHoursPayFormMethod { get; private set; }
    /// <summary> طريقة تعبئة نموذج القبض بالساعات </summary>
    public bool? FillHoursReceiptFormMethod { get; private set; }
    /// <summary> تسلسل طلب القيد </summary>
    public bool? JournalRequestSeq { get; private set; }
    /// <summary> تسلسل طلب الدفع </summary>
    public bool? PaymentRequestSeq { get; private set; }
    /// <summary> تسلسل طلب القبض </summary>
    public bool? ReceiptRequestSeq { get; private set; }
    /// <summary> ميزانية بعدة عملات </summary>
    public bool? UseMultiCurrencyBudget { get; private set; }
    /// <summary> حد بعدة عملات </summary>
    public int? UseMultiCurrencyLimit { get; private set; }
    /// <summary> طريقة تعبئة نموذج القيد بالساعات </summary>
    public bool? FillHoursJournalFormMethod { get; private set; }
    /// <summary> السماح بتكرار رقم الشيك للدفع </summary>
    public bool? DuplicateChequeNoPayment { get; private set; }
    /// <summary> عرض الترحيل الافتراضي في كشف الحساب </summary>
    public bool? DefaultPostDisplayInStatement { get; private set; }
    /// <summary> عدم إغلاق أرباح/خسائر العملة المختلفة </summary>
    public bool? NotCloseDiffCurrencyPLAccount { get; private set; }
    /// <summary> إدراج اسم المشروع في الوصف </summary>
    public bool? DescIncludeProjectName { get; private set; }
    /// <summary> عرض رقم العمود </summary>
    public bool? ShowColumnNo { get; private set; }
    /// <summary> عرض كود المندوب </summary>
    public bool? ShowRepCode { get; private set; }
    /// <summary> ربط النقدية بكود المندوب </summary>
    public bool? ConnectCashNoRepCode { get; private set; }
    /// <summary> ربط مركز التكلفة بكود المندوب </summary>
    public bool? ConnectCostCodeRepCode { get; private set; }
    /// <summary> السماح باختلاف السعر بين الرئيس والتفصيلي </summary>
    public bool? AllowDiffRateMasterDetail { get; private set; }
    /// <summary> ترحيل وصف الحساب في شيك الدفع </summary>
    public bool? PostAccountDescInPayCheque { get; private set; }
    /// <summary> استخدام أكثر من طلب في القيد </summary>
    public bool? UseMultiRequestInJV { get; private set; }
    /// <summary> التحقق من مبلغ الميزانية </summary>
    public bool? CheckBudgetAmount { get; private set; }
    /// <summary> إنشاء ملاحظة عند نقل الميزانية بين الفروع </summary>
    public bool? CreateNoteMoveBudgetBranch { get; private set; }
    /// <summary> عرض رقم فرع المستند </summary>
    public bool? ShowDocBranchNo { get; private set; }
    /// <summary> استخدام جميع الحسابات في الميزانية </summary>
    public bool? UseAllAccountBudget { get; private set; }
    /// <summary> استدعاء كود مندوب العملاء </summary>
    public bool? CallCustomerRepCode { get; private set; }
    /// <summary> استخدام اعتماد الميزانية </summary>
    public bool? UseBudgetApproval { get; private set; }
    /// <summary> تفعيل حد الفرع </summary>
    public bool? UseBranchLimit { get; private set; }
    /// <summary> نوع تسلسل القيد </summary>
    public short? JournalSeqType { get; private set; }
    /// <summary> إلزامي كود مندوب في القبض </summary>
    public bool? MandatoryReceiptRepCode { get; private set; }
    /// <summary> عدد الحقول التفصيلية الإضافية </summary>
    public bool? AddFieldDetailCount { get; private set; }
    /// <summary> ربط الحساب بالنشاط </summary>
    public bool? ConnectAccountActivity { get; private set; }
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
    /// <summary> تسلسل العملة للصرف </summary>
    public short? ExchangeCurrencySeq { get; private set; }
    /// <summary> استخدام ضريبة المصروفات </summary>
    public bool? UseExpenseTax { get; private set; }
    /// <summary> استخدام أكثر من طلب في الدفع </summary>
    public bool? UseMultiRequestInPayment { get; private set; }
    /// <summary> استخدام أكثر من طلب في القبض </summary>
    public bool? UseMultiRequestInReceipt { get; private set; }
    /// <summary> تفعيل حساب وسيط للإيداع البنكي </summary>
    public bool? UseBankDepositAccountIntermediate { get; private set; }
}