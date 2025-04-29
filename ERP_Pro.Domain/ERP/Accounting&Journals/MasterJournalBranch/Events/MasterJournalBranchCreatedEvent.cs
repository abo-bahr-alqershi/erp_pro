using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Events
{
    /// <summary>
    /// يُطلق عند إنشاء قيد رئيسي جديد للفرع.
    /// </summary>
    public sealed class MasterJournalBranchCreatedEvent : DomainEventBase
    {
        public MasterJournalBranchId Id { get; }

        public MasterJournalBranchCreatedEvent(MasterJournalBranchId id)
        {
            Id = id;
        }
    }
}
