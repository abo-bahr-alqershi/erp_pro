using System;
using ERP.Domain.Common;

namespace ERP.Domain.Accounting.Events
{
    /// <summary>
    /// يُطلق عند أي تغيير بالمرفقات المرتبطة بالقيد.
    /// Triggered when attachments are added/removed/modified for the MasterJournal.
    /// </summary>
    public class MasterJournalAttachmentAuditEvent : DomainEventBase
    {
        public MasterJournalAttachmentAuditEvent(Guid masterJournalId, string operationType, int userId, DateTime operationDate, string attachmentName)
        {
            MasterJournalId = masterJournalId;
            OperationType = operationType;
            UserId = userId;
            OperationDate = operationDate;
            AttachmentName = attachmentName;
        }

        public Guid MasterJournalId { get; }
        public string OperationType { get; }
        public int UserId { get; }
        public DateTime OperationDate { get; }
        public string AttachmentName { get; }
    }
}