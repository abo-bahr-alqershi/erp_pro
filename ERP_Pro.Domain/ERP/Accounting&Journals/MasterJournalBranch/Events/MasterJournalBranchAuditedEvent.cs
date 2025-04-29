using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Events
{
    /// <summary>
    /// يُطلق عند تدقيق أو مراجعة القيد.
    /// </summary>
    public sealed class MasterJournalBranchAuditedEvent : DomainEventBase
    {
        public MasterJournalBranchId Id { get; }
        public int AuditedByUserId { get; }

        public MasterJournalBranchAuditedEvent(MasterJournalBranchId id, int auditedByUserId)
        {
            Id = id;
            AuditedByUserId = auditedByUserId;
        }
    }
}
