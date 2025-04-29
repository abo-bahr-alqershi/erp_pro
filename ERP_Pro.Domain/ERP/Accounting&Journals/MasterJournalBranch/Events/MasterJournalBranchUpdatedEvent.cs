using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Events
{
    /// <summary>
    /// يُطلق عند تعديل بيانات القيد الرئيسي للفرع.
    /// </summary>
    public sealed class MasterJournalBranchUpdatedEvent : DomainEventBase
    {
        public MasterJournalBranchId Id { get; }

        public MasterJournalBranchUpdatedEvent(MasterJournalBranchId id)
        {
            Id = id;
        }
    }
}
