public class PrivilegeCostCenter
{
    public int? UserId { get; private set; }
    /// <summary> مركز التكلفة </summary>
    public string? CostCenterCode { get; private set; }
    public bool? AddFlag { get; private set; }
    public bool? ViewFlag { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public int? UpdatedUserId { get; private set; }
    public User User { get; private set; } // Navigation
}