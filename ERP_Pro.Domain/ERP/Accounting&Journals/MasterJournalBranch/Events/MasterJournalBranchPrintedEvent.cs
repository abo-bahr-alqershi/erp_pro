using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Events
{
    /// <summary>
    /// يُطلق عند طباعة القيد (Print).
    /// </summary>
    public sealed class MasterJournalBranchPrintedEvent : DomainEventBase
    {
        public MasterJournalBranchId Id { get; }
        public int PrintedByUserId { get; }

        public MasterJournalBranchPrintedEvent(MasterJournalBranchId id, int printedByUserId)
        {
            Id = id;
            PrintedByUserId = printedByUserId;
        }
    }
}
