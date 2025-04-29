public class BankAccountMaster
{
    public int DocType { get; private set; }
    public long DocJVType { get; private set; }
    public long DocumentNo { get; private set; }
    public long? DocumentSerial { get; private set; }
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
    public short? AccountDetailType { get; private set; }
    public bool? IdentifyChequeNo { get; private set; }
    public bool? IdentifyNoteNoBank { get; private set; }
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
    public int AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime AddedDate { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public long? UpdateCount { get; private set; }
    public int BranchNo { get; private set; }
    public long? BranchUser { get; private set; }
    public short BranchYear { get; private set; }
    /// <summary> مركز التكلفة </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> رقم المشروع </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> رقم النشاط </summary>
    public string? ActivityNo { get; private set; }
    public int? ReportPriority { get; private set; }
    public int? TypeSerial { get; private set; }
    public bool? Approved { get; private set; }
    public int? ApprovedUserId { get; private set; }
    /// <summary> تاريخ الاعتماد </summary>
    public DateTime? ApprovedDate { get; private set; }
    /// <summary> وصف الاعتماد </summary>
    public string? ApprovedDesc { get; private set; }
    public bool? ProcessedFlag { get; private set; }
    public bool? Inactive { get; private set; }
    /// <summary> سبب التعطيل </summary>
    public string? InactiveReason { get; private set; }
    public int? InactiveUserId { get; private set; }
    /// <summary> تاريخ التعطيل </summary>
    public DateTime? InactiveDate { get; private set; }
    public bool StandbyFlag { get; private set; }
    public long? StandbyUserId { get; private set; }
    /// <summary> تاريخ الانتظار </summary>
    public DateTime? StandbyDate { get; private set; }
    /// <summary> وصف الانتظار </summary>
    public string? StandbyDesc { get; private set; }
    /// <summary> تاريخ ووقت الإنشاء </summary>
    public DateTime? CreatedDateClock { get; private set; }
    public short? AttachNo { get; private set; }
    public ICollection<BankAccountDetail> BankAccountDetails { get; private set; } // Inverse Navigation
}