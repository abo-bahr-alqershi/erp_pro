using Common.Domain.Exceptions;

namespace Accounting.Domain.Exceptions
{
    public class JournalVoucherInUseException : DomainException
    {
        public JournalVoucherInUseException(int voucherType, long voucherNo)
            : base($"لا يمكن حذف سند القيد رقم '{voucherNo}' لأنه مرتبط بتفاصيل قيد/مستندات أخرى.")
        { }
    }
}