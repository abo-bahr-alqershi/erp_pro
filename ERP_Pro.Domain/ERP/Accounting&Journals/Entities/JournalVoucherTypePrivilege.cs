public class JournalVoucherTypePrivilege
{
    /// <summary> رقم نوع السند </summary>
    public short? VoucherType { get; private set; }
    /// <summary> رقم فرعي لنوع السند </summary>
    public short? VoucherTypeNo { get; private set; }
    /// <summary> رقم المستخدم </summary>
    public int? UserId { get; private set; }
    /// <summary> صلاحية الإضافة (1=يستطيع إضافة) </summary>
    public bool? AddFlag { get; private set; }
    /// <summary> صلاحية العرض (1=يستطيع عرض) </summary>
    public bool? ViewFlag { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> رقم المستخدم الذي أضاف السطر </summary>
    public int? AddedByUserId { get; private set; }
    /// <summary> تاريخ التعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> رقم المستخدم الذي عدل السطر </summary>
    public int? UpdatedByUserId { get; private set; }
}