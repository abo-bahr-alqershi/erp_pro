public class EmployeeGuarantor
{
    public long? EmployeeNo { get; private set; }
    public long? GuarantorNo { get; private set; }
    public bool? Inactive { get; private set; }
    /// <summary> سبب التعطيل </summary>
    public string? InactiveReason { get; private set; }
    /// <summary> تاريخ التعطيل </summary>
    public DateTime? InactiveDate { get; private set; }
    public long? InactiveUserId { get; private set; }
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime AddedDate { get; private set; }
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public long? UpdateCount { get; private set; }
    public long? ReportPriority { get; private set; }
    public bool? SalaryFlag { get; private set; }
    public Employee Employee { get; private set; } // Navigation
}