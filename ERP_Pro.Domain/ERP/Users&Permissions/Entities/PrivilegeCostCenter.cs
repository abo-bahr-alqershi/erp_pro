public class PrivilegeCostCenter
{
    /// <summary> رقم المستخدم </summary>
    public int? UserId { get; private set; }
    /// <summary> مركز التكلفة </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> صلاحية إضافة </summary>
    public bool? AddFlag { get; private set; }
    /// <summary> صلاحية استعراض </summary>
    public bool? ViewFlag { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> المستخدم الذي أضاف السطر </summary>
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> المستخدم الذي عدل السطر </summary>
    public int? UpdatedUserId { get; private set; }
    public User User { get; private set; } // Navigation
}