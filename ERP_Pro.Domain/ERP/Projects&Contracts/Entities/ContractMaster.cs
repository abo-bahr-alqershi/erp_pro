public class ContractMaster
{
    /// <summary> رقم المستند الرئيسي </summary>
    public long? DocumentNo { get; private set; }
    /// <summary> تسلسل المستند </summary>
    public long? DocumentSerial { get; private set; }
    /// <summary> رقم العقد </summary>
    public string ContractNo { get; private set; }
    /// <summary> تاريخ العقد </summary>
    public DateTime ContractDate { get; private set; }
    /// <summary> تاريخ بداية العقد </summary>
    public DateTime? ContractFromDate { get; private set; }
    /// <summary> تاريخ نهاية العقد </summary>
    public DateTime? ContractToDate { get; private set; }
    /// <summary> كود العميل أو المورد </summary>
    public string CustomerCode { get; private set; }
    /// <summary> اسم العميل أو المورد </summary>
    public string? CustomerName { get; private set; }
    /// <summary> مبلغ العقد </summary>
    public int? ContractAmount { get; private set; }
    /// <summary> عملة العقد </summary>
    public string? ContractCurrency { get; private set; }
    /// <summary> سعر صرف العقد </summary>
    public int? ContractRate { get; private set; }
    /// <summary> نوع العقد </summary>
    public bool? ContractType { get; private set; }
    /// <summary> وصف العقد </summary>
    public string? ContractDesc { get; private set; }
    /// <summary> ملاحظات العقد </summary>
    public string? ContractNote { get; private set; }
    /// <summary> مبلغ التجديد </summary>
    public int? ContractRenewAmount { get; private set; }
    /// <summary> إجمالي الخصم </summary>
    public int? DiscountAmount { get; private set; }
    /// <summary> خصم رئيسي </summary>
    public int? DiscountAmountMaster { get; private set; }
    /// <summary> خصم تفصيلي </summary>
    public int? DiscountAmountDetail { get; private set; }
    /// <summary> رقم عقد التجديد </summary>
    public string? ContractRenewNo { get; private set; }
    /// <summary> تسلسل التجديد </summary>
    public string? ContractRenewSerial { get; private set; }
    /// <summary> مبلغ الضريبة </summary>
    public int? VATAmount { get; private set; }
    /// <summary> علم التصدير (1=نعم) </summary>
    public bool? ExportFlag { get; private set; }
    /// <summary> حالة العقد </summary>
    public bool? ContractStatus { get; private set; }
    /// <summary> تنبيه مبلغ متبقي </summary>
    public int? AmountReminderNotify { get; private set; }
    /// <summary> تنبيه بعدد أيام انتهاء </summary>
    public int? DayExpireNotify { get; private set; }
    /// <summary> السماح بتجاوز المبلغ </summary>
    public bool? AllowExceedAmount { get; private set; }
    /// <summary> نسبة التجاوز المسموح </summary>
    public int? PercentExceed { get; private set; }
    /// <summary> رقم مرجعي إضافي </summary>
    public string? ReferenceNo { get; private set; }
    /// <summary> مركز التكلفة </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> رقم المشروع </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> رقم النشاط </summary>
    public string? ActivityNo { get; private set; }
    /// <summary> تمت المعالجة (1=نعم) </summary>
    public bool? Processed { get; private set; }
    /// <summary> معطل (1=نعم) </summary>
    public bool? Inactive { get; private set; }
    /// <summary> المستخدم الذي عطل العقد </summary>
    public int? InactiveUserId { get; private set; }
    /// <summary> تاريخ التعطيل </summary>
    public DateTime? InactiveDate { get; private set; }
    /// <summary> سبب التعطيل </summary>
    public string? InactiveReason { get; private set; }
    /// <summary> تم الاعتماد (1=نعم) </summary>
    public bool? Approved { get; private set; }
    /// <summary> المستخدم الذي اعتمد </summary>
    public int? ApprovedUserId { get; private set; }
    /// <summary> تاريخ الاعتماد </summary>
    public DateTime? ApprovedDate { get; private set; }
    /// <summary> وصف الاعتماد أو ملاحظات الاعتماد </summary>
    public string? ApprovedDesc { get; private set; }
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
    /// <summary> نوع احتساب الضريبة </summary>
    public int? CalculateTaxTypeNo { get; private set; }
    /// <summary> علم الكمية المعفاة من الضريبة </summary>
    public bool? CalculateTaxFreeQtyFlag { get; private set; }
    /// <summary> نسبة الدفعة المقدمة من العقد </summary>
    public int? AdvancePaymentPercentContract { get; private set; }
    /// <summary> تاريخ الإضافة (بتدقيق الساعة) </summary>
    public DateTime? AddedDateClock { get; private set; }
    /// <summary> نوع احتساب الضريبة المضافة </summary>
    public bool? CalculateVATPriceType { get; private set; }
    /// <summary> خصم رئيسي بعد الضريبة </summary>
    public int? DiscountAmountMasterVAT { get; private set; }
    /// <summary> نوع عقد إضافي/توسعة/خدمة... </summary>
    public int? ContractType5 { get; private set; }
    public ICollection<ContractBatch> ContractBatchs { get; private set; } // Inverse Navigation
    public ICollection<ContractDetail> ContractDetails { get; private set; } // Inverse Navigation
    public ICollection<ContractRenew> ContractRenews { get; private set; } // Inverse Navigation
}