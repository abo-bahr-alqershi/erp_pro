using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Events
{
    /// <summary>
    /// يُطلق عند تصدير القيد (Export).
    /// </summary>
    public sealed class MasterJournalBranchExportedEvent : DomainEventBase
    {
        public MasterJournalBranchId Id { get; }
        public int ExportedByUserId { get; }

        public MasterJournalBranchExportedEvent(MasterJournalBranchId id, int exportedByUserId)
        {
            Id = id;
            ExportedByUserId = exportedByUserId;
        }
    }
}
