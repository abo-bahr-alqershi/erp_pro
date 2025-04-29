using Common.Domain.Exceptions;

namespace Accounting.Domain.Exceptions
{
    /// <summary>
    /// يُرمى عند محاولة حذف نوع سند مرتبط بسندات قيد
    /// </summary>
    public class JournalVoucherTypeInUseException : DomainException
    {
        public JournalVoucherTypeInUseException(int voucherType)
            : base($"لا يمكن حذف نوع سند القيد رقم '{voucherType}' لأنه مستخدم في سندات قيد أخرى.")
        { }
    }
}