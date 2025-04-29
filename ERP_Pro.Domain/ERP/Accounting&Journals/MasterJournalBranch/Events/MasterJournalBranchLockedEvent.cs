using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Events
{
    /// <summary>
    /// يُطلق عند قفل القيد (Lock).
    /// </summary>
    public sealed class MasterJournalBranchLockedEvent : DomainEventBase
    {
        public MasterJournalBranchId Id { get; }
        public int LockedByUserId { get; }

        public MasterJournalBranchLockedEvent(MasterJournalBranchId id, int lockedByUserId)
        {
            Id = id;
            LockedByUserId = lockedByUserId;
        }
    }
}
