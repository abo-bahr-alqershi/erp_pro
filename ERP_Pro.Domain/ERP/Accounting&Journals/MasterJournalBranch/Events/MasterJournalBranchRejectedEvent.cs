using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Events
{
    /// <summary>
    /// يُطلق عند رفض القيد (Reject).
    /// </summary>
    public sealed class MasterJournalBranchRejectedEvent : DomainEventBase
    {
        public MasterJournalBranchId Id { get; }
        public int RejectedByUserId { get; }
        public string Reason { get; }

        public MasterJournalBranchRejectedEvent(MasterJournalBranchId id, int rejectedByUserId, string reason)
        {
            Id = id;
            RejectedByUserId = rejectedByUserId;
            Reason = reason;
        }
    }
}
