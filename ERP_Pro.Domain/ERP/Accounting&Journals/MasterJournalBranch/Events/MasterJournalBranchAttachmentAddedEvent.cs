using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Events
{
    /// <summary>
    /// يُطلق عند إضافة مرفق للقيد.
    /// </summary>
    public sealed class MasterJournalBranchAttachmentAddedEvent : DomainEventBase
    {
        public MasterJournalBranchId Id { get; }
        public string AttachmentName { get; }
        public int AddedByUserId { get; }

        public MasterJournalBranchAttachmentAddedEvent(MasterJournalBranchId id, string attachmentName, int addedByUserId)
        {
            Id = id;
            AttachmentName = attachmentName;
            AddedByUserId = addedByUserId;
        }
    }
}
