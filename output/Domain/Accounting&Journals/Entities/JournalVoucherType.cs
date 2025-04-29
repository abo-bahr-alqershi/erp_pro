public class JournalVoucherType
{
    public int? VoucherType { get; private set; }
    public short? VoucherTypeNo { get; private set; }
    /// <summary> كود الحساب الافتراضي لهذا السند </summary>
    public string? AccountCode { get; private set; }
    /// <summary> كود التفاصيل للحساب </summary>
    public string? AccountDtlCode { get; private set; }
    public short? AccountDtlType { get; private set; }
}