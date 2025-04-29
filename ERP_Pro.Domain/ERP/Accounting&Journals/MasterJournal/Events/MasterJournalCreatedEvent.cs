using System;
using ERP.Domain.Common;

namespace ERP.Domain.Accounting.Events
{
    /// <summary>
    /// يُطلق عند إنشاء رأس قيد محاسبي جديد (MasterJournal).
    /// Triggers when a new MasterJournal entry is created.
    /// </summary>
    public class MasterJournalCreatedEvent : DomainEventBase
    {
        public MasterJournalCreatedEvent(Guid masterJournalId, DateTime createdAt, int createdByUserId)
        {
            MasterJournalId = masterJournalId;
            CreatedAt = createdAt;
            CreatedByUserId = createdByUserId;
        }

        public Guid MasterJournalId { get; }
        public DateTime CreatedAt { get; }
        public int CreatedByUserId { get; }
    }
}