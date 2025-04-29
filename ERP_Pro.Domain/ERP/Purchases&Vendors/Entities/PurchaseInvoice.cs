public class PurchaseInvoice
{
    /// <summary> نوع الشراء </summary>
    public bool PurchaseType { get; private set; }
    /// <summary> نوع مستند الفاتورة </summary>
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
    public int BillRate { get; private set; }
    /// <summary> سعر المخزون </summary>
    public int? StockRate { get; private set; }
    /// <summary> كود المورد </summary>
    public string? VendorCode { get; private set; }
    /// <summary> اسم المورد </summary>
    public string? VendorName { get; private set; }
    /// <summary> رقم الاعتماد المستندي </summary>
    public string? LCNo { get; private set; }
    /// <summary> كود الحساب المحاسبي </summary>
    public string? AccountCode { get; private set; }
    /// <summary> كود الحساب الفرعي </summary>
    public string? AccountCodeDetail { get; private set; }
    /// <summary> نوع تفاصيل الحساب </summary>
    public short? AccountDetailType { get; private set; }
    /// <summary> رقم الشيك </summary>
    public long? ChequeNo { get; private set; }
    /// <summary> مبلغ الشيك </summary>
    public int? ChequeAmount { get; private set; }
    /// <summary> تاريخ استحقاق الشيك </summary>
    public DateTime? ChequeDueDate { get; private set; }
    /// <summary> تاريخ استحقاق الفاتورة </summary>
    public DateTime? BillDueDate { get; private set; }
    /// <summary> تم ترحيل الفاتورة (1=نعم) </summary>
    public bool? BillPost { get; private set; }
    /// <summary> تم استلام البضاعة (1=نعم) </summary>
    public bool? BillGoodReceived { get; private set; }
    /// <summary> مبلغ الخصم </summary>
    public int? DiscountAmount { get; private set; }
    /// <summary> خصم رئيسي </summary>
    public int? DiscountAmountMaster { get; private set; }
    /// <summary> خصم تفصيلي </summary>
    public int? DiscountAmountDetail { get; private set; }
    /// <summary> مبلغ الضريبة </summary>
    public int? VATAmount { get; private set; }
    /// <summary> إجمالي مبلغ الفاتورة </summary>
    public int? BillAmount { get; private set; }
    /// <summary> مبالغ أخرى (مصاريف/خدمات) </summary>
    public int? OtherAmount { get; private set; }
    /// <summary> فاتورة بدون مبالغ أخرى (1=نعم) </summary>
    public bool? BillWithoutOtherAmount { get; private set; }
    /// <summary> كود المستودع </summary>
    public long? WarehouseCode { get; private set; }
    /// <summary> رقم مرجعي إضافي </summary>
    public string? ReferenceNo { get; private set; }
    /// <summary> رقم الكاشير </summary>
    public long? CashNo { get; private set; }
    /// <summary> رقم الكاشير الأجنبي </summary>
    public long? CashNoFCC { get; private set; }
    /// <summary> مركز التكلفة </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> رقم المشروع </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> حساب النقد الأجنبي </summary>
    public string? CashAccountFCC { get; private set; }
    /// <summary> ملاحظات الفاتورة </summary>
    public string? Description { get; private set; }
    /// <summary> اسم السائق </summary>
    public string? DriverName { get; private set; }
    /// <summary> رقم السيارة </summary>
    public string? CarNo { get; private set; }
    /// <summary> نوع احتساب الضريبة في السعر </summary>
    public int? VATPriceType { get; private set; }
    /// <summary> حقل مرن 1 </summary>
    public string? Field1 { get; private set; }
    /// <summary> حقل مرن 2 </summary>
    public string? Field2 { get; private set; }
    /// <summary> حقل مرن 3 </summary>
    public string? Field3 { get; private set; }
    /// <summary> حقل مرن 4 </summary>
    public string? Field4 { get; private set; }
    /// <summary> حقل مرن 5 </summary>
    public string? Field5 { get; private set; }
    /// <summary> حقل مرن 6 </summary>
    public string? Field6 { get; private set; }
    /// <summary> حقل مرن 7 </summary>
    public string? Field7 { get; private set; }
    /// <summary> حقل مرن 8 </summary>
    public string? Field8 { get; private set; }
    /// <summary> حقل مرن 9 </summary>
    public string? Field9 { get; private set; }
    /// <summary> حقل مرن 10 </summary>
    public string? Field10 { get; private set; }
    /// <summary> أولوية التقرير </summary>
    public long? ReportPriority { get; private set; }
    /// <summary> مبلغ المصاريف </summary>
    public int? ExpenseAmount { get; private set; }
    /// <summary> استخدام الضريبة (1=نعم) </summary>
    public bool? UseVAT { get; private set; }
    /// <summary> تم الترحيل خارجيًا </summary>
    public int? ExternalPost { get; private set; }
    /// <summary> نوع الفاتورة </summary>
    public int? BillTypeNo { get; private set; }
    /// <summary> ربط مع عقد (1=نعم) </summary>
    public bool? ConnectWithContract { get; private set; }
    /// <summary> رقم العقد </summary>
    public string? ContractNo { get; private set; }
    /// <summary> تسلسل العقد </summary>
    public string? ContractSer { get; private set; }
    /// <summary> رقم النشاط </summary>
    public string? ActivityNo { get; private set; }
    /// <summary> علم معلق (1=نعم) </summary>
    public bool? HungFlag { get; private set; }
    /// <summary> طريقة الشحن </summary>
    public bool? FreightMethod { get; private set; }
    /// <summary> بيع تحت التكلفة (1=نعم) </summary>
    public bool? UnderSelling { get; private set; }
    /// <summary> رقم فاتورة المورد </summary>
    public string? VendorBillNo { get; private set; }
    /// <summary> كود مسؤول الشراء </summary>
    public string? PurchaseManagerCode { get; private set; }
    /// <summary> نوع مبلغ إضافي </summary>
    public bool? AddAmountType { get; private set; }
    /// <summary> مبلغ خصم غير مؤثر </summary>
    public int? DiscountAmountNotEffect { get; private set; }
    /// <summary> خصم إضافي رئيسي </summary>
    public int? AddDiscountAmountMaster { get; private set; }
    /// <summary> خصم إضافي تفصيلي </summary>
    public int? AddDiscountAmountDetail { get; private set; }
    /// <summary> تاريخ استلام الفاتورة </summary>
    public DateTime? ReceiveBillDate { get; private set; }
    /// <summary> تاريخ فاتورة المورد </summary>
    public DateTime? VendorBillDate { get; private set; }
    /// <summary> مبلغ المستند </summary>
    public int? DocumentAmount { get; private set; }
    /// <summary> رقم فرع المستند </summary>
    public int? DocumentBranchNo { get; private set; }
    /// <summary> نوع المستند </summary>
    public int? DocumentType { get; private set; }
    /// <summary> رقم الفاتورة المرجعي </summary>
    public long? BillNoRef { get; private set; }
    /// <summary> تسلسل الفاتورة المرجعي </summary>
    public int? BillSerRef { get; private set; }
    /// <summary> فاتورة خدمات (1=نعم) </summary>
    public bool? ServiceBill { get; private set; }
    /// <summary> رقم دفعة العقد </summary>
    public long? ContractBatchNo { get; private set; }
    /// <summary> رقم فاتورة مرتبطة </summary>
    public long? BillNoConn { get; private set; }
    /// <summary> تسلسل فاتورة مرتبطة </summary>
    public long? BillSerConn { get; private set; }
    /// <summary> مورد خليجي (1=نعم) </summary>
    public bool? VendorGCC { get; private set; }
    /// <summary> عنوان المورد </summary>
    public string? VendorAddress { get; private set; }
    /// <summary> الرقم الضريبي للمورد </summary>
    public string? VendorTaxCode { get; private set; }
    /// <summary> السجل التجاري </summary>
    public string? CommercialRegNo { get; private set; }
    /// <summary> خصم على المبالغ الأخرى </summary>
    public int? OtherAmountDiscount { get; private set; }
    /// <summary> مبلغ الضريبة على المبالغ الأخرى </summary>
    public int? VATAmountOther { get; private set; }
    /// <summary> مرجع التدقيق </summary>
    public bool? AuditRef { get; private set; }
    /// <summary> وصف مرجع التدقيق </summary>
    public string? AuditRefDesc { get; private set; }
    /// <summary> المستخدم لمرجع التدقيق </summary>
    public int? AuditRefUserId { get; private set; }
    /// <summary> تاريخ مرجع التدقيق </summary>
    public DateTime? AuditRefDate { get; private set; }
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
    public int? BranchNo { get; private set; }
    /// <summary> السنة المالية للفرع </summary>
    public short? BranchYear { get; private set; }
    /// <summary> مستخدم الفرع </summary>
    public short? BranchUser { get; private set; }
    public int? ClcTypNoTax { get; private set; }
    /// <summary> تاريخ الوصول </summary>
    public DateTime? ArrivalDate { get; private set; }
    /// <summary> تاريخ تسجيل الشحن </summary>
    public DateTime? FreightRegisterDate { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    /// <summary> احتساب ضريبة مستحقة </summary>
    public bool? PostTaxDueAcCode { get; private set; }
    /// <summary> استخدام TDS (1=نعم) </summary>
    public bool? UseTDSFlag { get; private set; }
    /// <summary> كود حساب إضافي </summary>
    public string? AccountCode2 { get; private set; }
    /// <summary> مبلغ الحساب </summary>
    public int? AccountAmount { get; private set; }
    /// <summary> حساب الدفع </summary>
    public int? PaymentAccount { get; private set; }
    /// <summary> مستوى السعر </summary>
    public short? LevelNoPrice { get; private set; }
    /// <summary> علم كمية معفاة من الضريبة </summary>
    public bool? TaxFreeQtyFlag { get; private set; }
    public CurrencyExchangeRate CurrencyExchangeRate { get; private set; } // Navigation
    public Project Project { get; private set; } // Navigation
    public Warehouse Warehouse { get; private set; } // Navigation
    public ICollection<PurchaseInvoiceDetail> PurchaseInvoiceDetails { get; private set; } // Inverse Navigation
}