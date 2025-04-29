public class JournalVoucherType
{
    /// <summary> رقم/نوع السند المحاسبي الرئيسي </summary>
    public int? VoucherType { get; private set; }
    /// <summary> رقم فرعي لنوع السند </summary>
    public short? VoucherTypeNo { get; private set; }
    /// <summary> كود الحساب الافتراضي لهذا السند </summary>
    public string? AccountCode { get; private set; }
    /// <summary> كود التفاصيل للحساب </summary>
    public string? AccountDtlCode { get; private set; }
    /// <summary> نوع التفاصيل للحساب </summary>
    public short? AccountDtlType { get; private set; }
}