using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Events
{
    /// <summary>
    /// يُطلق عند التحقق من التوافق مع السياسات أو القوانين (Compliance).
    /// </summary>
    public sealed class MasterJournalBranchComplianceCheckedEvent : DomainEventBase
    {
        public MasterJournalBranchId Id { get; }
        public bool IsCompliant { get; }
        public string? Notes { get; }

        public MasterJournalBranchComplianceCheckedEvent(MasterJournalBranchId id, bool isCompliant, string? notes)
        {
            Id = id;
            IsCompliant = isCompliant;
            Notes = notes;
        }
    }
}
