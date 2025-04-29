public class SequenceControl
{
    /// <summary> اسم الجدول المؤثر على التسلسل </summary>
    public string SequenceTableName { get; private set; }
    /// <summary> اسم العمود المؤثر في التسلسل </summary>
    public string SequenceColumnName { get; private set; }
    /// <summary> نوع التسلسل </summary>
    public bool? SequenceType { get; private set; }
    /// <summary> عمود إضافي 1 </summary>
    public string? SequenceCol1 { get; private set; }
    /// <summary> عمود إضافي 2 </summary>
    public string? SequenceCol2 { get; private set; }
    /// <summary> عمود إضافي 3 </summary>
    public string? SequenceCol3 { get; private set; }
    /// <summary> عمود إضافي 4 </summary>
    public string? SequenceCol4 { get; private set; }
    /// <summary> عمود إضافي 5 </summary>
    public string? SequenceCol5 { get; private set; }
    /// <summary> عمود إضافي 6 </summary>
    public string? SequenceCol6 { get; private set; }
    /// <summary> مقدار الزيادة </summary>
    public short? IncrementByValue { get; private set; }
    /// <summary> القيمة الابتدائية </summary>
    public short? InitValue { get; private set; }
    /// <summary> محتوى تسلسلي مركب </summary>
    public string? SequenceConcat { get; private set; }
    /// <summary> اسم التريجر المتعلق </summary>
    public string? TriggerName { get; private set; }
    /// <summary> فقط إذا كان فارغ </summary>
    public bool? OnlyIfNull { get; private set; }
    /// <summary> رقم الشركة </summary>
    public short CompanyNo { get; private set; }
    /// <summary> رقم الفرع </summary>
    public int BranchNo { get; private set; }
    /// <summary> سنة الفرع </summary>
    public short BranchYear { get; private set; }
    /// <summary> مستخدم الفرع </summary>
    public short? BranchUser { get; private set; }
    /// <summary> جهاز الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> جهاز التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    /// <summary> اسم العمود المؤثر في التسلسل </summary>
    public string? SequenceColumnName { get; private set; }
    public long? SVal1 { get; private set; }
    public long? SVal2 { get; private set; }
    public long? SVal3 { get; private set; }
    public long? SVal4 { get; private set; }
    public long? SVal5 { get; private set; }
    public long? SVal6 { get; private set; }
    /// <summary> مقدار الزيادة </summary>
    public short? IncrementByValue { get; private set; }
    /// <summary> القيمة الابتدائية </summary>
    public short? InitValue { get; private set; }
    public long? SSeqVal { get; private set; }
    /// <summary> نوع التسلسل </summary>
    public bool? SequenceType { get; private set; }
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
    public int? FldId { get; private set; }
    public string FldName { get; private set; }
    public int? AdUId { get; private set; }
    public DateTime? AdDate { get; private set; }
    public int? UpUId { get; private set; }
    public DateTime? UpDate { get; private set; }
    /// <summary> رقم الشركة </summary>
    public short CompanyNo { get; private set; }
    /// <summary> رقم الفرع </summary>
    public int? BranchNo { get; private set; }
    /// <summary> سنة الفرع </summary>
    public short? BranchYear { get; private set; }
    /// <summary> مستخدم الفرع </summary>
    public short? BranchUser { get; private set; }
    /// <summary> جهاز الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> جهاز التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public string SpnsrLNm { get; private set; }
    public string? SpnsrFNm { get; private set; }
    public string? CardJbNo { get; private set; }
    public string? WorkOfficeNo { get; private set; }
    public string? Addrs { get; private set; }
    public string? CardIdGrntr { get; private set; }
    public DateTime? CardIssuseDate { get; private set; }
    public string? CardIssusePlace { get; private set; }
    public DateTime? CardEndDate { get; private set; }
    public string? CommrclNo { get; private set; }
    public string? SocialInsurNo { get; private set; }
    public string? GrntrCompnyNm { get; private set; }
    public string? CommerceDate { get; private set; }
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
    public bool? Inactive { get; private set; }
    public int? InactiveUId { get; private set; }
    public DateTime? InactiveDate { get; private set; }
    public string? InactiveRes { get; private set; }
    public long AdUId { get; private set; }
    public long? UpUId { get; private set; }
    public DateTime AdDate { get; private set; }
    public DateTime? UpDate { get; private set; }
    public long? PrRep { get; private set; }
    public long? UpCnt { get; private set; }
    /// <summary> جهاز الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> جهاز التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
}