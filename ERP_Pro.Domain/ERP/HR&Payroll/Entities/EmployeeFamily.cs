public class EmployeeFamily
{
    /// <summary> رقم الشخص </summary>
    public long? PersonNo { get; private set; }
    /// <summary> رقم الموظف </summary>
    public long? EmployeeNo { get; private set; }
    /// <summary> اسم الشخص عربي </summary>
    public string PersonArabicName { get; private set; }
    /// <summary> اسم الشخص انجليزي </summary>
    public string? PersonEnglishName { get; private set; }
    /// <summary> اسم والد الشخص عربي </summary>
    public string? PersonParentArabicName { get; private set; }
    /// <summary> اسم والد الشخص انجليزي </summary>
    public string? PersonParentEnglishName { get; private set; }
    /// <summary> اسم الجد عربي </summary>
    public string? PersonGrandArabicName { get; private set; }
    /// <summary> اسم الجد انجليزي </summary>
    public string? PersonGrandEnglishName { get; private set; }
    /// <summary> اسم العائلة عربي </summary>
    public string? PersonFamilyArabicName { get; private set; }
    /// <summary> اسم العائلة انجليزي </summary>
    public string? PersonFamilyEnglishName { get; private set; }
    /// <summary> رقم الجنسية </summary>
    public long? NationalityNo { get; private set; }
    /// <summary> رقم الديانة </summary>
    public long? ReligionNo { get; private set; }
    /// <summary> مكان الميلاد </summary>
    public string? BirthPlace { get; private set; }
    /// <summary> تاريخ الميلاد </summary>
    public DateTime? BirthDate { get; private set; }
    /// <summary> رقم القرابة </summary>
    public bool? RelationshipNo { get; private set; }
    /// <summary> الجنس </summary>
    public bool? Gender { get; private set; }
    /// <summary> علم التأمين الطبي </summary>
    public bool? MedicalFlag { get; private set; }
    /// <summary> المستخدم الذي أضاف </summary>
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime AddedDate { get; private set; }
    /// <summary> المستخدم الذي عدل </summary>
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> عدد مرات التحديث </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> أولوية التقرير </summary>
    public long? ReportPriority { get; private set; }
    /// <summary> تصنيف الحالة الطبية </summary>
    public short? PersonMedicalCategory { get; private set; }
    /// <summary> بداية التأمين الطبي </summary>
    public DateTime? PersonMedicalStartDate { get; private set; }
    /// <summary> نهاية التأمين الطبي </summary>
    public DateTime? PersonMedicalEndDate { get; private set; }
    /// <summary> مبلغ التأمين </summary>
    public int? PersonMedicalAmount { get; private set; }
    /// <summary> رقم عضوية التأمين </summary>
    public string? PersonMedicalMembership { get; private set; }
    /// <summary> نسبة التأمين </summary>
    public int? EmployeeMedicalRatio { get; private set; }
    /// <summary> فصيلة الدم </summary>
    public long? BloodType { get; private set; }
    /// <summary> صورة الشخص </summary>
    public string? PersonImage { get; private set; }
    /// <summary> العمر المستحق للتأمين </summary>
    public int? PersonMedicalDeservedAge { get; private set; }
    public Employee Employee { get; private set; } // Navigation
}