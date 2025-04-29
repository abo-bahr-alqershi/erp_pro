using System;
using Domain.Common;

namespace Accounting.Domain.Journals.Events
{
    /// <summary>
    /// حدث عند إلغاء ترحيل تفاصيل القيد اليومي
    /// </summary>
    public class JournalDetailUnpostedEvent : DomainEventBase
    {
        public JournalDetailId JournalDetailId { get; }
        public DateTime UnpostedAt { get; }
        public int? UnpostedByUserId { get; }

        public JournalDetailUnpostedEvent(JournalDetailId id, DateTime unpostedAt, int? unpostedByUserId)
        {
            JournalDetailId = id;
            UnpostedAt = unpostedAt;
            UnpostedByUserId = unpostedByUserId;
        }
    }
}