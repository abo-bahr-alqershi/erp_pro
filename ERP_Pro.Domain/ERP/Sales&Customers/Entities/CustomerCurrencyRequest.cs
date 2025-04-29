public class CustomerCurrencyRequest
{
    /// <summary> كود العميل الرئيسي </summary>
    public string? CustomerCode { get; private set; }
    /// <summary> رمز العملة المطلوب إضافتها </summary>
    public string? CurrencyCode { get; private set; }
    /// <summary> حد الائتمان المطلوب للعملة الجديدة </summary>
    public decimal? CreditLimit { get; private set; }
    /// <summary> حد الفواتير المطلوب للعملة الجديدة </summary>
    public decimal? InvoiceLimit { get; private set; }
    /// <summary> مستوى تسعيري للعملة عند الطلب </summary>
    public short? LevelNo { get; private set; }
    /// <summary> آخر تاريخ تأكيد للعميل </summary>
    public DateTime? ConfirmLastDate { get; private set; }
    /// <summary> معطل (1=نعم) </summary>
    public bool? Inactive { get; private set; }
    /// <summary> المستخدم الذي أضاف السطر </summary>
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> المستخدم الذي عدل السطر </summary>
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> نوع حد الائتمان </summary>
    public bool? CustomerLimitType { get; private set; }
    /// <summary> نسبة حد الائتمان </summary>
    public int? CustomerLimitPercent { get; private set; }
    /// <summary> عدد مرات التحديث </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
}