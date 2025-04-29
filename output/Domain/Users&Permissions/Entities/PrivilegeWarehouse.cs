public class PrivilegeWarehouse
{
    public int? UserId { get; private set; }
    public long? WarehouseCode { get; private set; }
    public bool? AddFlag { get; private set; }
    public bool? ViewFlag { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public int? UpdatedUserId { get; private set; }
    public bool? TransferWarehouseFlag { get; private set; }
    public User User { get; private set; } // Navigation
    public Warehouse Warehouse { get; private set; } // Navigation
}