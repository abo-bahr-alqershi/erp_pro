using Common.Domain.Exceptions;

namespace Accounting.Domain.Exceptions
{
    /// <summary>
    /// يُرمى عند محاولة حذف نوع تقرير مستخدم في حسابات
    /// </summary>
    public class AccountReportTypeInUseException : DomainException
    {
        public AccountReportTypeInUseException(int reportType)
            : base($"لا يمكن حذف نوع التقرير المحاسبي رقم '{reportType}' لأنه مستخدم في حسابات أخرى.")
        { }
    }
}