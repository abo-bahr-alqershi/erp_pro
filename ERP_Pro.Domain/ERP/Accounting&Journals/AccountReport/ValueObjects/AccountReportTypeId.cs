using Common.Domain.ValueObjects;

namespace Accounting.Domain.ValueObjects
{
    /// <summary>
    /// معرف نوع التقرير المحاسبي (ReportType) كـ ValueObject متوافق مع الـ Common
    /// </summary>
    public sealed class AccountReportTypeId : IdValueObject<int>
    {
        public AccountReportTypeId(int value) : base(value) { }
    }
}