using Common.Domain.ValueObjects;

namespace Accounting.Domain.ValueObjects
{
    /// <summary>
    /// معرف مركب لصلاحية نوع سند القيد (VoucherType, VoucherTypeNo, UserId)
    /// </summary>
    public sealed class JournalVoucherTypePrivilegeId : CompositeIdValueObject
    {
        public int VoucherType { get; }
        public int VoucherTypeNo { get; }
        public int UserId { get; }

        public JournalVoucherTypePrivilegeId(int voucherType, int voucherTypeNo, int userId)
            : base($"{voucherType}-{voucherTypeNo}-{userId}")
        {
            VoucherType = voucherType;
            VoucherTypeNo = voucherTypeNo;
            UserId = userId;
        }
    }
}