public class JournalVoucherTypePrivilege
{
    public short? VoucherType { get; private set; }
    public short? VoucherTypeNo { get; private set; }
    public int? UserId { get; private set; }
    public bool? AddFlag { get; private set; }
    public bool? ViewFlag { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    public int? AddedByUserId { get; private set; }
    /// <summary> تاريخ التعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public int? UpdatedByUserId { get; private set; }
}