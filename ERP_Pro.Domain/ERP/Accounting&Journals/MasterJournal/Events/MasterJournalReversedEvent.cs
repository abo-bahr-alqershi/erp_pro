using System;
using ERP.Domain.Common;

namespace ERP.Domain.Accounting.Events
{
    /// <summary>
    /// يُطلق عند تنفيذ عملية قيد عكسي (Reverse).
    /// Triggered when a reverse journal entry is created.
    /// </summary>
    public class MasterJournalReversedEvent : DomainEventBase
    {
        public MasterJournalReversedEvent(Guid originalJournalId, Guid reversedJournalId, DateTime reversedAt, int reversedByUserId)
        {
            OriginalJournalId = originalJournalId;
            ReversedJournalId = reversedJournalId;
            ReversedAt = reversedAt;
            ReversedByUserId = reversedByUserId;
        }

        public Guid OriginalJournalId { get; }
        public Guid ReversedJournalId { get; }
        public DateTime ReversedAt { get; }
        public int ReversedByUserId { get; }
    }
}