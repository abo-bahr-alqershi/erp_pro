using System;
using Common.Domain.Events;
using Accounting.Domain.ValueObjects;

namespace Accounting.Domain.Events
{
    /// <summary>
    /// حدث دوميني لأي تغيير أساسي في نوع التقرير المحاسبي
    /// </summary>
    public class AccountReportTypeChangedEvent : DomainEventBase
    {
        public AccountReportTypeId ReportTypeId { get; }
        public string OperationType { get; }
        public int? ReportType { get; }
        public string ReportName { get; }
        public string? ReportEName { get; }

        public AccountReportTypeChangedEvent(
            AccountReportTypeId reportTypeId,
            string operationType,
            int? reportType,
            string reportName,
            string? reportEName)
        {
            ReportTypeId = reportTypeId;
            OperationType = operationType;
            ReportType = reportType;
            ReportName = reportName;
            ReportEName = reportEName;
        }
    }
}