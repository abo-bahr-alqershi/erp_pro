using System;
using ERP.Domain.Common;

namespace ERP.Domain.Accounting.Events
{
    /// <summary>
    /// يُطلق عند مزامنة أو تحديث العلاقات (تفاصيل القيد - الفروع).
    /// Triggered when journal relations (details/branches) are synced or updated.
    /// </summary>
    public class MasterJournalRelationsSyncedEvent : DomainEventBase
    {
        public MasterJournalRelationsSyncedEvent(Guid masterJournalId, DateTime syncedAt, string relationType)
        {
            MasterJournalId = masterJournalId;
            SyncedAt = syncedAt;
            RelationType = relationType;
        }

        public Guid MasterJournalId { get; }
        public DateTime SyncedAt { get; }
        public string RelationType { get; }
    }
}