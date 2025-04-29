public class Note
{
    public bool NoteType { get; private set; }
    public short? NoteTypeNo { get; private set; }
    public long NoteNo { get; private set; }
    public long? NoteSerial { get; private set; }
    /// <summary> تاريخ الملاحظة </summary>
    public DateTime? NoteDate { get; private set; }
    /// <summary> كود الحساب </summary>
    public string? AccountCode { get; private set; }
    /// <summary> كود الحساب التفصيلي </summary>
    public string? AccountDetailCode { get; private set; }
    public short? AccountDetailType { get; private set; }
    /// <summary> عملة الحساب </summary>
    public string? AccountCurrency { get; private set; }
    /// <summary> كود العميل </summary>
    public string? CustomerCode { get; private set; }
    /// <summary> كود المورد </summary>
    public string? VendorCode { get; private set; }
    public bool? Processed { get; private set; }
    public bool? Approved { get; private set; }
    public int? ApprovedUserId { get; private set; }
    /// <summary> تاريخ الموافقة </summary>
    public DateTime? ApprovedDate { get; private set; }
    /// <summary> وصف الموافقة </summary>
    public string? ApprovedDesc { get; private set; }
    /// <summary> كود مركز التكلفة </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> رقم المشروع </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> رقم النشاط </summary>
    public string? ActivityNo { get; private set; }
    /// <summary> حقل إضافي 1 </summary>
    public string? Field1 { get; private set; }
    /// <summary> حقل إضافي 2 </summary>
    public string? Field2 { get; private set; }
    /// <summary> حقل إضافي 3 </summary>
    public string? Field3 { get; private set; }
    /// <summary> حقل إضافي 4 </summary>
    public string? Field4 { get; private set; }
    /// <summary> حقل إضافي 5 </summary>
    public string? Field5 { get; private set; }
    /// <summary> حقل إضافي 6 </summary>
    public string? Field6 { get; private set; }
    /// <summary> حقل إضافي 7 </summary>
    public string? Field7 { get; private set; }
    /// <summary> حقل إضافي 8 </summary>
    public string? Field8 { get; private set; }
    /// <summary> حقل إضافي 9 </summary>
    public string? Field9 { get; private set; }
    /// <summary> حقل إضافي 10 </summary>
    public string? Field10 { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public int? UpdatedUserId { get; private set; }
    public long? UpdateCount { get; private set; }
    public long? ReportPriority { get; private set; }
    public short CompanyNo { get; private set; }
    public int? BranchNo { get; private set; }
    public short? BranchYear { get; private set; }
    public short? BranchUser { get; private set; }
    /// <summary> جهاز الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> جهاز التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public int? ExternalPost { get; private set; }
    public AccountCurrency AccountCurrency { get; private set; } // Navigation
    public Customer Customer { get; private set; } // Navigation
    public ICollection<NoteDetail> NoteDetails { get; private set; } // Inverse Navigation
}