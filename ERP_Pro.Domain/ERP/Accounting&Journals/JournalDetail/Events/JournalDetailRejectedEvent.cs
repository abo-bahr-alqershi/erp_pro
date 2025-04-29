using System;
using Domain.Common;

namespace Accounting.Domain.Journals.Events
{
    /// <summary>
    /// حدث عند رفض تفاصيل القيد اليومي
    /// </summary>
    public class JournalDetailRejectedEvent : DomainEventBase
    {
        public JournalDetailId JournalDetailId { get; }
        public DateTime RejectedAt { get; }
        public int? RejectedByUserId { get; }

        public JournalDetailRejectedEvent(JournalDetailId id, DateTime rejectedAt, int? rejectedByUserId)
        {
            JournalDetailId = id;
            RejectedAt = rejectedAt;
            RejectedByUserId = rejectedByUserId;
        }
    }
}