using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Events
{
    /// <summary>
    /// يُطلق عند اعتماد القيد (Approval).
    /// </summary>
    public sealed class MasterJournalBranchApprovedEvent : DomainEventBase
    {
        public MasterJournalBranchId Id { get; }
        public int ApprovedByUserId { get; }

        public MasterJournalBranchApprovedEvent(MasterJournalBranchId id, int approvedByUserId)
        {
            Id = id;
            ApprovedByUserId = approvedByUserId;
        }
    }
}
