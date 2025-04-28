using System;
using Domain.Common;

namespace Accounting.Domain.Journals.Events
{
    /// <summary>
    /// حدث عند قفل تفاصيل القيد اليومي
    /// </summary>
    public class JournalDetailLockedEvent : DomainEventBase
    {
        public JournalDetailId JournalDetailId { get; }
        public DateTime LockedAt { get; }
        public int? LockedByUserId { get; }

        public JournalDetailLockedEvent(JournalDetailId id, DateTime lockedAt, int? lockedByUserId)
        {
            JournalDetailId = id;
            LockedAt = lockedAt;
            LockedByUserId = lockedByUserId;
        }
    }
}