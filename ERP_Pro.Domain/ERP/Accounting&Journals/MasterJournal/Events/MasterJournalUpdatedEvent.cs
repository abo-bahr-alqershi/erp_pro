using System;
using ERP.Domain.Common;

namespace ERP.Domain.Accounting.Events
{
    /// <summary>
    /// يُطلق عند تعديل أي بيانات في رأس القيد المحاسبي (MasterJournal).
    /// Triggered when any update occurs on MasterJournal.
    /// </summary>
    public class MasterJournalUpdatedEvent : DomainEventBase
    {
        public MasterJournalUpdatedEvent(Guid masterJournalId, DateTime updatedAt, int updatedByUserId)
        {
            MasterJournalId = masterJournalId;
            UpdatedAt = updatedAt;
            UpdatedByUserId = updatedByUserId;
        }

        public Guid MasterJournalId { get; }
        public DateTime UpdatedAt { get; }
        public int UpdatedByUserId { get; }
    }
}