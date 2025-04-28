using Common.Domain.Exceptions;

namespace Accounting.Domain.Exceptions
{
    public class JournalVoucherPostedException : DomainException
    {
        public JournalVoucherPostedException(int voucherType, long voucherNo)
            : base($"لا يمكن تعديل أو حذف سند القيد المرحّل (نوع: '{voucherType}'، رقم: '{voucherNo}').")
        { }
    }
}