public class CustomerCurrencyRequest
{
    /// <summary> كود العميل الرئيسي </summary>
    public string? CustomerCode { get; private set; }
    /// <summary> رمز العملة المطلوب إضافتها </summary>
    public string? CurrencyCode { get; private set; }
    public decimal? CreditLimit { get; private set; }
    public decimal? InvoiceLimit { get; private set; }
    public short? LevelNo { get; private set; }
    /// <summary> آخر تاريخ تأكيد للعميل </summary>
    public DateTime? ConfirmLastDate { get; private set; }
    public bool? Inactive { get; private set; }
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public bool? CustomerLimitType { get; private set; }
    /// <summary> نسبة حد الائتمان </summary>
    public int? CustomerLimitPercent { get; private set; }
    public long? UpdateCount { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
}