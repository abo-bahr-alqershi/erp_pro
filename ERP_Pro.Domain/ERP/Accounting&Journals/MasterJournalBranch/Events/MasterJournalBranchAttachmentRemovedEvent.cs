using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Events
{
    /// <summary>
    /// يُطلق عند حذف مرفق من القيد.
    /// </summary>
    public sealed class MasterJournalBranchAttachmentRemovedEvent : DomainEventBase
    {
        public MasterJournalBranchId Id { get; }
        public string AttachmentName { get; }
        public int RemovedByUserId { get; }

        public MasterJournalBranchAttachmentRemovedEvent(MasterJournalBranchId id, string attachmentName, int removedByUserId)
        {
            Id = id;
            AttachmentName = attachmentName;
            RemovedByUserId = removedByUserId;
        }
    }
}
