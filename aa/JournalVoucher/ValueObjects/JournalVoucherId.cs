using Common.Domain.ValueObjects;

namespace Accounting.Domain.ValueObjects
{
    /// <summary>
    /// معرف سند القيد (مركب من النوع والرقم الرئيسي)
    /// </summary>
    public sealed class JournalVoucherId : CompositeIdValueObject
    {
        public int VoucherType { get; }
        public long VoucherNo { get; }

        public JournalVoucherId(int voucherType, long voucherNo)
            : base($"{voucherType}-{voucherNo}")
        {
            VoucherType = voucherType;
            VoucherNo = voucherNo;
        }
    }
}