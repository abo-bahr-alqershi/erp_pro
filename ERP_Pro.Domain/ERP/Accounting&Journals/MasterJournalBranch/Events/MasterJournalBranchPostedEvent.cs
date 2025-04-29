using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Events
{
    /// <summary>
    /// يُطلق عند ترحيل القيد (Posting).
    /// </summary>
    public sealed class MasterJournalBranchPostedEvent : DomainEventBase
    {
        public MasterJournalBranchId Id { get; }
        public int PostedByUserId { get; }

        public MasterJournalBranchPostedEvent(MasterJournalBranchId id, int postedByUserId)
        {
            Id = id;
            PostedByUserId = postedByUserId;
        }
    }
}
