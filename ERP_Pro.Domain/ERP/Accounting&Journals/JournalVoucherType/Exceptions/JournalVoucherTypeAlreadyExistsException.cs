using Common.Domain.Exceptions;

namespace Accounting.Domain.Exceptions
{
    /// <summary>
    /// يُرمى عند محاولة إضافة نوع سند بنفس الرقم موجود مسبقًا
    /// </summary>
    public class JournalVoucherTypeAlreadyExistsException : DomainException
    {
        public JournalVoucherTypeAlreadyExistsException(int voucherType)
            : base($"نوع سند القيد رقم '{voucherType}' موجود مسبقًا.")
        { }
    }
}