using Common.Domain.Exceptions;

namespace Accounting.Domain.Exceptions
{
    /// <summary>
    /// يُرمى عند محاولة حذف صلاحية مستخدمة فعليًا
    /// </summary>
    public class JournalVoucherTypePrivilegeInUseException : DomainException
    {
        public JournalVoucherTypePrivilegeInUseException(int voucherType, int voucherTypeNo, int userId)
            : base($"لا يمكن حذف صلاحية نوع السند '{voucherType}'/فرعي '{voucherTypeNo}' للمستخدم '{userId}' لأنها مستخدمة فعليًا.")
        { }
    }
}