using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Events
{
    /// <summary>
    /// يُطلق عند حذف قيد رئيسي للفرع.
    /// </summary>
    public sealed class MasterJournalBranchDeletedEvent : DomainEventBase
    {
        public MasterJournalBranchId Id { get; }

        public MasterJournalBranchDeletedEvent(MasterJournalBranchId id)
        {
            Id = id;
        }
    }
}
