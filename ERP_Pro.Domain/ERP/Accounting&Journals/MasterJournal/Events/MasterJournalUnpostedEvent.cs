using System;
using ERP.Domain.Common;

namespace ERP.Domain.Accounting.Events
{
    /// <summary>
    /// يُطلق عند إلغاء الترحيل (Unpost) للقيد.
    /// Triggered when unposting the MasterJournal.
    /// </summary>
    public class MasterJournalUnpostedEvent : DomainEventBase
    {
        public MasterJournalUnpostedEvent(Guid masterJournalId, DateTime unpostDate, int unpostUserId)
        {
            MasterJournalId = masterJournalId;
            UnpostDate = unpostDate;
            UnpostUserId = unpostUserId;
        }

        public Guid MasterJournalId { get; }
        public DateTime UnpostDate { get; }
        public int UnpostUserId { get; }
    }
}