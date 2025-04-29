using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Events
{
    /// <summary>
    /// يُطلق عند أرشفة القيد.
    /// </summary>
    public sealed class MasterJournalBranchArchivedEvent : DomainEventBase
    {
        public MasterJournalBranchId Id { get; }
        public int ArchivedByUserId { get; }

        public MasterJournalBranchArchivedEvent(MasterJournalBranchId id, int archivedByUserId)
        {
            Id = id;
            ArchivedByUserId = archivedByUserId;
        }
    }
}
