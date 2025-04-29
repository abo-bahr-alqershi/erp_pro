using System;
using Domain.Common;

namespace Accounting.Domain.Journals.Events
{
    /// <summary>
    /// حدث عند حذف تفاصيل قيد يومي
    /// </summary>
    public class JournalDetailDeletedEvent : DomainEventBase
    {
        public JournalDetailId JournalDetailId { get; }
        public DateTime DeletedAt { get; }
        public int? DeletedByUserId { get; }

        public JournalDetailDeletedEvent(JournalDetailId id, DateTime deletedAt, int? deletedByUserId)
        {
            JournalDetailId = id;
            DeletedAt = deletedAt;
            DeletedByUserId = deletedByUserId;
        }
    }
}