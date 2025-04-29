using Common.Domain.Exceptions;

namespace Accounting.Domain.Exceptions
{
    public class JournalVoucherAlreadyExistsException : DomainException
    {
        public JournalVoucherAlreadyExistsException(int voucherType, long voucherNo)
            : base($"سند القيد من النوع '{voucherType}' ورقم '{voucherNo}' موجود مسبقًا.")
        { }
    }
}