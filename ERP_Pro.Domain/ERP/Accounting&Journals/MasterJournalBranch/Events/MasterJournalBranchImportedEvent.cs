using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Events
{
    /// <summary>
    /// يُطلق عند استيراد القيد (Import).
    /// </summary>
    public sealed class MasterJournalBranchImportedEvent : DomainEventBase
    {
        public MasterJournalBranchId Id { get; }
        public int ImportedByUserId { get; }

        public MasterJournalBranchImportedEvent(MasterJournalBranchId id, int importedByUserId)
        {
            Id = id;
            ImportedByUserId = importedByUserId;
        }
    }
}
