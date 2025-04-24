using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Domain.Reports.Events
{
    public class ReportGeneratedEvent : DomainEventBase
    {
        public int ReportLogId { get; }
        public ReportGeneratedEvent(int reportLogId) => ReportLogId = reportLogId;
    }
}