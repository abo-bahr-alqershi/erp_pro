using Common.Domain.Exceptions;

namespace Accounting.Domain.Exceptions
{
    /// <summary>
    /// يُرمى عند محاولة إضافة نوع تقرير بنفس الاسم موجود مسبقًا
    /// </summary>
    public class AccountReportTypeAlreadyExistsException : DomainException
    {
        public AccountReportTypeAlreadyExistsException(string reportName)
            : base($"نوع التقرير المحاسبي بالاسم '{reportName}' موجود مسبقًا.")
        { }
    }
}