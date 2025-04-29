using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Events
{
    /// <summary>
    /// يُطلق عند اكتشاف شبهة احتيال أو تلاعب في القيد.
    /// </summary>
    public sealed class MasterJournalBranchFraudDetectedEvent : DomainEventBase
    {
        public MasterJournalBranchId Id { get; }
        public string Details { get; }

        public MasterJournalBranchFraudDetectedEvent(MasterJournalBranchId id, string details)
        {
            Id = id;
            Details = details;
        }
    }
}
