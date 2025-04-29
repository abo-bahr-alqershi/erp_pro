using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Events
{
    /// <summary>
    /// يُطلق عند فك قفل القيد (Unlock).
    /// </summary>
    public sealed class MasterJournalBranchUnlockedEvent : DomainEventBase
    {
        public MasterJournalBranchId Id { get; }
        public int UnlockedByUserId { get; }

        public MasterJournalBranchUnlockedEvent(MasterJournalBranchId id, int unlockedByUserId)
        {
            Id = id;
            UnlockedByUserId = unlockedByUserId;
        }
    }
}
