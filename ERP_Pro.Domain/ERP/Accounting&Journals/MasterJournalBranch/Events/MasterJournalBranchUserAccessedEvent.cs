using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Events
{
    /// <summary>
    /// يُطلق عند وصول مستخدم للقيد (لأغراض التدقيق الأمني).
    /// </summary>
    public sealed class MasterJournalBranchUserAccessedEvent : DomainEventBase
    {
        public MasterJournalBranchId Id { get; }
        public int UserId { get; }

        public MasterJournalBranchUserAccessedEvent(MasterJournalBranchId id, int userId)
        {
            Id = id;
            UserId = userId;
        }
    }
}
