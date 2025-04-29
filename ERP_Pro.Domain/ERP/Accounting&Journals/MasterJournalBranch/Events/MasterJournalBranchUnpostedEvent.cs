using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Events
{
    /// <summary>
    /// يُطلق عند إلغاء الترحيل (Unposting).
    /// </summary>
    public sealed class MasterJournalBranchUnpostedEvent : DomainEventBase
    {
        public MasterJournalBranchId Id { get; }
        public int UnpostedByUserId { get; }

        public MasterJournalBranchUnpostedEvent(MasterJournalBranchId id, int unpostedByUserId)
        {
            Id = id;
            UnpostedByUserId = unpostedByUserId;
        }
    }
}
