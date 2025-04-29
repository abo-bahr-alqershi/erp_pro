using System;
using ERP.Domain.Common;

namespace ERP.Domain.Accounting.Events
{
    /// <summary>
    /// يُطلق عند ترحيل القيد الخارجي (External Post).
    /// Triggered when MasterJournal is externally posted.
    /// </summary>
    public class MasterJournalExternalPostedEvent : DomainEventBase
    {
        public MasterJournalExternalPostedEvent(Guid masterJournalId, DateTime externalPostDate, int externalPostUserId)
        {
            MasterJournalId = masterJournalId;
            ExternalPostDate = externalPostDate;
            ExternalPostUserId = externalPostUserId;
        }

        public Guid MasterJournalId { get; }
        public DateTime ExternalPostDate { get; }
        public int ExternalPostUserId { get; }
    }
}