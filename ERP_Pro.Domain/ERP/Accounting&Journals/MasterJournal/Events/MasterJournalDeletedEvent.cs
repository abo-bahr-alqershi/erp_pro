using System;
using ERP.Domain.Common;

namespace ERP.Domain.Accounting.Events
{
    /// <summary>
    /// يُطلق عند حذف رأس قيد محاسبي (سواء حذف منطقي أو فعلي).
    /// Triggered when a MasterJournal entry is deleted.
    /// </summary>
    public class MasterJournalDeletedEvent : DomainEventBase
    {
        public MasterJournalDeletedEvent(Guid masterJournalId, DateTime deletedAt, int deletedByUserId)
        {
            MasterJournalId = masterJournalId;
            DeletedAt = deletedAt;
            DeletedByUserId = deletedByUserId;
        }

        public Guid MasterJournalId { get; }
        public DateTime DeletedAt { get; }
        public int DeletedByUserId { get; }
    }
}