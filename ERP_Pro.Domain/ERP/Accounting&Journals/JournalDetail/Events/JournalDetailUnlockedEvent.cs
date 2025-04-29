using System;
using Domain.Common;

namespace Accounting.Domain.Journals.Events
{
    /// <summary>
    /// حدث عند فتح تفاصيل القيد اليومي بعد القفل
    /// </summary>
    public class JournalDetailUnlockedEvent : DomainEventBase
    {
        public JournalDetailId JournalDetailId { get; }
        public DateTime UnlockedAt { get; }
        public int? UnlockedByUserId { get; }

        public JournalDetailUnlockedEvent(JournalDetailId id, DateTime unlockedAt, int? unlockedByUserId)
        {
            JournalDetailId = id;
            UnlockedAt = unlockedAt;
            UnlockedByUserId = unlockedByUserId;
        }
    }
}