public class SupplierItem
{
    /// <summary> كود الصنف </summary>
    public string? ItemCode { get; private set; }
    /// <summary> كود المورد </summary>
    public string? VendorCode { get; private set; }
    /// <summary> كمية التعبئة </summary>
    public long? ItemPacking { get; private set; }
    /// <summary> سعر المورد </summary>
    public int? VendorPrice { get; private set; }
    /// <summary> مورد رئيسي (1=نعم) </summary>
    public bool? MainVendor { get; private set; }
    /// <summary> رمز العملة </summary>
    public string? CurrencyCode { get; private set; }
    /// <summary> وحدة الصنف </summary>
    public string? ItemUnit { get; private set; }
    /// <summary> حجم العبوة </summary>
    public int? PackSize { get; private set; }
    /// <summary> المستخدم الذي أضاف السطر </summary>
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> المستخدم الذي عدل السطر </summary>
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> كود الصنف لدى المورد </summary>
    public string? VendorItemCode { get; private set; }
    /// <summary> عدد مرات التحديث </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    /// <summary> وحدة المورد </summary>
    public string? VendorUnit { get; private set; }
    /// <summary> أقل كمية للصنف </summary>
    public int? ItemMinQty { get; private set; }
    public CurrencyExchangeRate CurrencyExchangeRate { get; private set; } // Navigation
}