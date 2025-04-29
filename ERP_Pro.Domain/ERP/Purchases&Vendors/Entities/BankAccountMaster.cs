public class BankAccountMaster
{
    /// <summary> نوع المستند </summary>
    public int DocType { get; private set; }
    /// <summary> نوع قيد اليومية </summary>
    public long DocJVType { get; private set; }
    /// <summary> رقم المستند </summary>
    public long DocumentNo { get; private set; }
    /// <summary> التسلسل للمستند </summary>
    public long? DocumentSerial { get; private set; }
    /// <summary> رقم تسلسلي مؤقت </summary>
    public long? DocumentMSq { get; private set; }
    /// <summary> تاريخ المستند </summary>
    public DateTime DocumentDate { get; private set; }
    /// <summary> من تاريخ </summary>
    public DateTime? FromDate { get; private set; }
    /// <summary> إلى تاريخ </summary>
    public DateTime? ToDate { get; private set; }
    /// <summary> كود الحساب </summary>
    public string AccountCode { get; private set; }
    /// <summary> كود حساب فرعي </summary>
    public string? AccountCodeDetail { get; private set; }
    /// <summary> كود حساب فرعي إضافي </summary>
    public string? AccountCodeDetailSub { get; private set; }
    /// <summary> نوع تفاصيل الحساب </summary>
    public short? AccountDetailType { get; private set; }
    /// <summary> تعريف رقم الشيك </summary>
    public bool? IdentifyChequeNo { get; private set; }
    /// <summary> تعريف رقم الإشعار البنكي </summary>
    public bool? IdentifyNoteNoBank { get; private set; }
    /// <summary> تعريف الرقم المرجعي </summary>
    public bool? IdentifyRefNo { get; private set; }
    /// <summary> رمز العملة </summary>
    public string CurrencyCode { get; private set; }
    /// <summary> وصف المستند </summary>
    public string? DocumentDesc { get; private set; }
    /// <summary> رقم مرجعي إضافي </summary>
    public string? ReferenceNo { get; private set; }
    /// <summary> رقم يدوي </summary>
    public string? ManualNo { get; private set; }
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
    /// <summary> المستخدم الذي أضاف السطر </summary>
    public int AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime AddedDate { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> المستخدم الذي عدل السطر </summary>
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    /// <summary> عدد مرات التحديث </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> رقم الفرع </summary>
    public int BranchNo { get; private set; }
    /// <summary> مستخدم الفرع </summary>
    public long? BranchUser { get; private set; }
    /// <summary> السنة المالية للفرع </summary>
    public short BranchYear { get; private set; }
    /// <summary> مركز التكلفة </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> رقم المشروع </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> رقم النشاط </summary>
    public string? ActivityNo { get; private set; }
    /// <summary> أولوية التقرير </summary>
    public int? ReportPriority { get; private set; }
    /// <summary> تسلسل نوع العملية </summary>
    public int? TypeSerial { get; private set; }
    /// <summary> تم الاعتماد (1=نعم) </summary>
    public bool? Approved { get; private set; }
    /// <summary> مستخدم الاعتماد </summary>
    public int? ApprovedUserId { get; private set; }
    /// <summary> تاريخ الاعتماد </summary>
    public DateTime? ApprovedDate { get; private set; }
    /// <summary> وصف الاعتماد </summary>
    public string? ApprovedDesc { get; private set; }
    /// <summary> تمت المعالجة </summary>
    public bool? ProcessedFlag { get; private set; }
    /// <summary> معطل (1=نعم) </summary>
    public bool? Inactive { get; private set; }
    /// <summary> سبب التعطيل </summary>
    public string? InactiveReason { get; private set; }
    /// <summary> المستخدم الذي عطل السطر </summary>
    public int? InactiveUserId { get; private set; }
    /// <summary> تاريخ التعطيل </summary>
    public DateTime? InactiveDate { get; private set; }
    /// <summary> قيد الانتظار </summary>
    public bool StandbyFlag { get; private set; }
    /// <summary> مستخدم وضع الانتظار </summary>
    public long? StandbyUserId { get; private set; }
    /// <summary> تاريخ الانتظار </summary>
    public DateTime? StandbyDate { get; private set; }
    /// <summary> وصف الانتظار </summary>
    public string? StandbyDesc { get; private set; }
    /// <summary> تاريخ ووقت الإنشاء </summary>
    public DateTime? CreatedDateClock { get; private set; }
    /// <summary> عدد المرفقات </summary>
    public short? AttachNo { get; private set; }
    public ICollection<BankAccountDetail> BankAccountDetails { get; private set; } // Inverse Navigation
}