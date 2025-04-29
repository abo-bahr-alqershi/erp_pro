using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Events
{
    /// <summary>
    /// يُطلق عند عكس القيد (Reverse Journal).
    /// </summary>
    public sealed class MasterJournalBranchReversedEvent : DomainEventBase
    {
        public MasterJournalBranchId Id { get; }
        public int ReversedByUserId { get; }

        public MasterJournalBranchReversedEvent(MasterJournalBranchId id, int reversedByUserId)
        {
            Id = id;
            ReversedByUserId = reversedByUserId;
        }
    }
}
