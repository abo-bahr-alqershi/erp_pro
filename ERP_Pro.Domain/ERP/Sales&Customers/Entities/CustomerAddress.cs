public class CustomerAddress
{
    /// <summary> كود العميل الأساسي </summary>
    public string? CustomerCode { get; private set; }
    /// <summary> كود العميل الفرعي/العنوان </summary>
    public string? SubCustomerCode { get; private set; }
    /// <summary> اسم العائلة للفرع </summary>
    public string? SubCustomerLastName { get; private set; }
    /// <summary> الاسم الأول للفرع </summary>
    public string? SubCustomerFirstName { get; private set; }
    /// <summary> اسم القسم </summary>
    public string? DepartmentName { get; private set; }
    /// <summary> الوظيفة </summary>
    public string? JobName { get; private set; }
    /// <summary> عنوان الفرع </summary>
    public string? CustomerAddress { get; private set; }
    /// <summary> صندوق بريد الفرع </summary>
    public string? CustomerBox { get; private set; }
    /// <summary> فاكس الفرع </summary>
    public string? CustomerFax { get; private set; }
    /// <summary> هاتف الفرع </summary>
    public string? CustomerPhone { get; private set; }
    /// <summary> جوال الفرع </summary>
    public string? CustomerMobile { get; private set; }
    /// <summary> رقم الدولة </summary>
    public short? CountryNo { get; private set; }
    /// <summary> رقم المدينة </summary>
    public long? CityNo { get; private set; }
    /// <summary> كود المنطقة </summary>
    public long? RegionCode { get; private set; }
    /// <summary> معطل (1=نعم) </summary>
    public bool? Inactive { get; private set; }
    /// <summary> تاريخ التعطيل </summary>
    public DateTime? InactiveDate { get; private set; }
    /// <summary> سبب التعطيل </summary>
    public string? InactiveReason { get; private set; }
    /// <summary> المستخدم الذي عطل السطر </summary>
    public int? InactiveUserId { get; private set; }
    /// <summary> رقم البطاقة </summary>
    public string? CardNo { get; private set; }
    /// <summary> نوع البطاقة </summary>
    public short? CardType { get; private set; }
    /// <summary> رقم وظيفة البطاقة </summary>
    public string? CardJobNo { get; private set; }
    /// <summary> المستخدم الذي أضاف السطر </summary>
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> المستخدم الذي عدل السطر </summary>
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> أولوية التقرير </summary>
    public int? ReportPriority { get; private set; }
    /// <summary> عدد مرات التحديث </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    /// <summary> تاريخ القياس/الإدخال </summary>
    public DateTime? MeasureDate { get; private set; }
    /// <summary> تم الاستيراد من اكسل (1=نعم) </summary>
    public bool? ImportFromXLS { get; private set; }
}