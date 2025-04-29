public class EmployeeAttendance
{
    /// <summary> رقم الموقع أو نقطة الحضور </summary>
    public long? LocationNumber { get; private set; }
    /// <summary> اسم الموقع بالعربية </summary>
    public string? LocationNameAr { get; private set; }
    /// <summary> اسم الموقع بالإنجليزية </summary>
    public string? LocationNameEn { get; private set; }
    /// <summary> نوع الاتصال (مثلاً: جهاز بصمة، تطبيق، ...الخ) </summary>
    public short ConnectionType { get; private set; }
    /// <summary> خط الطول GPS </summary>
    public string? GpsLongitudeX { get; private set; }
    /// <summary> خط العرض GPS </summary>
    public string? GpsLatitudeY { get; private set; }
    /// <summary> المسافة المسموحة حول الموقع (بالمتر) </summary>
    public int? AllowedDistanceGps { get; private set; }
    /// <summary> عنوان الشبكة (IP) للموقع </summary>
    public string? LocationNetworkIp { get; private set; }
    /// <summary> هل الموقع معطل </summary>
    public bool Inactive { get; private set; }
    /// <summary> سبب التعطيل </summary>
    public string? InactiveReason { get; private set; }
    /// <summary> رقم المستخدم الذي عطل </summary>
    public long? InactiveUserId { get; private set; }
    /// <summary> تاريخ التعطيل </summary>
    public DateTime? InactiveDate { get; private set; }
    /// <summary> رقم المستخدم الذي أضاف </summary>
    public int AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime AddedDate { get; private set; }
    /// <summary> اسم الجهاز الذي أضيف منه السطر </summary>
    public string? AddedTerminalName { get; private set; }
    /// <summary> رقم المستخدم الذي عدل </summary>
    public int? UpdatedUserId { get; private set; }
    /// <summary> عدد مرات التحديث </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> اسم الجهاز الذي تم التعديل منه </summary>
    public string? UpdatedTerminalName { get; private set; }
    /// <summary> رقم تقرير الحضور المرتبط </summary>
    public long? PayrollReport { get; private set; }
}