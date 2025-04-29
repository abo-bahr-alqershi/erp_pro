public class Backup
{
    /// <summary> رقم النسخة الاحتياطية </summary>
    public long? BackupNo { get; private set; }
    /// <summary> اسم النسخة الاحتياطية </summary>
    public string? BackupName { get; private set; }
    /// <summary> اسم ملف النسخة الاحتياطية </summary>
    public string? FileName { get; private set; }
    /// <summary> تاريخ النسخة الاحتياطية </summary>
    public DateTime? BackupDate { get; private set; }
    /// <summary> كلمة مرور التشفير (إن وجدت) </summary>
    public string? EncryptPassword { get; private set; }
    /// <summary> المستخدم الذي أضاف </summary>
    public int? AddedUserId { get; private set; }
    /// <summary> رقم الشركة </summary>
    public short CompanyNo { get; private set; }
    /// <summary> رقم الفرع </summary>
    public int BranchNo { get; private set; }
    /// <summary> سنة الفرع </summary>
    public short? BranchYear { get; private set; }
    /// <summary> مستخدم الفرع </summary>
    public short? BranchUser { get; private set; }
    /// <summary> جهاز الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> جهاز التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public long? DocNo { get; private set; }
    public long? DocSrl { get; private set; }
    public string ACode { get; private set; }
    public string? AcCodeDtl { get; private set; }
    public short? AcDtlTyp { get; private set; }
    public string CurCode { get; private set; }
    public long? CurRate { get; private set; }
    public long? AmtL { get; private set; }
    public long? AmtF { get; private set; }
    public long? ActBal { get; private set; }
    public long? IssueAmt { get; private set; }
    public long? NotIssueAmt { get; private set; }
    public string? RepCode { get; private set; }
    public string? DocDsc { get; private set; }
    public string? CcCode { get; private set; }
    public string? PjNo { get; private set; }
    public string? ActvNo { get; private set; }
    public long? DocSeq { get; private set; }
    public int? DocBrnNo { get; private set; }
    /// <summary> رقم الشركة </summary>
    public short CompanyNo { get; private set; }
    /// <summary> رقم الفرع </summary>
    public int BranchNo { get; private set; }
    /// <summary> سنة الفرع </summary>
    public short? BranchYear { get; private set; }
    /// <summary> مستخدم الفرع </summary>
    public short? BranchUser { get; private set; }
    public long? UpCnt { get; private set; }
    public long? DocSrl { get; private set; }
    public DateTime? DocDate { get; private set; }
    public string? DocDsc { get; private set; }
    public string? BenName { get; private set; }
    public string? RecName { get; private set; }
    public string? RefNo { get; private set; }
    public string? ACode { get; private set; }
    public string? AcCodeDtl { get; private set; }
    public short? AcDtlTyp { get; private set; }
    public short? TypNo { get; private set; }
    public string? CurCode { get; private set; }
    public long? CurRate { get; private set; }
    public long? AmtL { get; private set; }
    public long? AmtF { get; private set; }
    public string? CcCode { get; private set; }
    public string? PjNo { get; private set; }
    public string? ActvNo { get; private set; }
    public short? AttachNo { get; private set; }
    public bool? PayMthd { get; private set; }
    public bool? Approved { get; private set; }
    public int? AprvUId { get; private set; }
    public DateTime? AprvDate { get; private set; }
    public string? AprvDsc { get; private set; }
    public bool? Inactive { get; private set; }
    public string? InactiveRes { get; private set; }
    public int? InactiveUId { get; private set; }
    public DateTime? InactiveDate { get; private set; }
    public bool? PrcssdFlg { get; private set; }
    public string? RepCode { get; private set; }
    public bool? StandBy { get; private set; }
    public bool? Posted { get; private set; }
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
    /// <summary> المستخدم الذي أضاف </summary>
    public int? AddedUserId { get; private set; }
    public DateTime? AdDate { get; private set; }
    public int? UpUId { get; private set; }
    public DateTime? UpDate { get; private set; }
    public int? PrRep { get; private set; }
    public long? UpCnt { get; private set; }
    /// <summary> جهاز الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> جهاز التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    /// <summary> رقم الشركة </summary>
    public short CompanyNo { get; private set; }
    /// <summary> رقم الفرع </summary>
    public int BranchNo { get; private set; }
    /// <summary> سنة الفرع </summary>
    public short? BranchYear { get; private set; }
    /// <summary> مستخدم الفرع </summary>
    public short? BranchUser { get; private set; }
}