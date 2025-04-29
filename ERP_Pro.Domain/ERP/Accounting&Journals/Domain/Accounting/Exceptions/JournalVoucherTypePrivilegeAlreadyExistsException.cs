using Common.Domain.Exceptions;

namespace Accounting.Domain.Exceptions
{
    /// <summary>
    /// يُرمى عند محاولة إضافة صلاحية مكررة لنوع سند ومستخدم
    /// </summary>
    public class JournalVoucherTypePrivilegeAlreadyExistsException : DomainException
    {
        public JournalVoucherTypePrivilegeAlreadyExistsException(int voucherType, int voucherTypeNo, int userId)
            : base($"الصلاحية لنوع السند رقم '{voucherType}'/فرعي '{voucherTypeNo}' للمستخدم '{userId}' موجودة مسبقًا.")
        { }
    }
}