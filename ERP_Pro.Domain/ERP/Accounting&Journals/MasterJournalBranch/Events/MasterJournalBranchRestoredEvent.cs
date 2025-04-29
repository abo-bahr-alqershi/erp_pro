using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Events
{
    /// <summary>
    /// يُطلق عند استعادة القيد المؤرشف.
    /// </summary>
    public sealed class MasterJournalBranchRestoredEvent : DomainEventBase
    {
        public MasterJournalBranchId Id { get; }
        public int RestoredByUserId { get; }

        public MasterJournalBranchRestoredEvent(MasterJournalBranchId id, int restoredByUserId)
        {
            Id = id;
            RestoredByUserId = restoredByUserId;
        }
    }
}
