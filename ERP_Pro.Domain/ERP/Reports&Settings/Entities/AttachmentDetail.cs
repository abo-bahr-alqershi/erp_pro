public class AttachmentDetail
{
    /// <summary> رقم المرفق الرئيسي </summary>
    public bool? AttachmentNo { get; private set; }
    /// <summary> رقم وصف المرفق </summary>
    public short? AttachmentDescNo { get; private set; }
    /// <summary> اسم وصف المرفق بالعربي </summary>
    public string? ArabicDescName { get; private set; }
    /// <summary> اسم وصف المرفق بالانجليزي </summary>
    public string? EnglishDescName { get; private set; }
    /// <summary> المستخدم الذي أضاف </summary>
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> المستخدم الذي عدل </summary>
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ التعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> عدد مرات التحديث </summary>
    public long? UpdateCount { get; private set; }
    public string? AttchAName { get; private set; }
    public string? AttchEName { get; private set; }
    public int? Optional { get; private set; }
    public int? ConnCCode { get; private set; }
    /// <summary> المستخدم الذي أضاف </summary>
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> المستخدم الذي عدل </summary>
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ التعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> عدد مرات التحديث </summary>
    public long? UpdateCount { get; private set; }
    public long? PrRep { get; private set; }
    public string? AdTrmnlNm { get; private set; }
    public string? UpTrmnlNm { get; private set; }
    public AttachmentMaster AttachmentMaster { get; private set; } // Navigation
}