using System;
using Domain.Common;

namespace Accounting.Domain.Journals.Events
{
    /// <summary>
    /// حدث عند تعديل تفاصيل القيد اليومي
    /// </summary>
    public class JournalDetailUpdatedEvent : DomainEventBase
    {
        public JournalDetailId JournalDetailId { get; }
        public DateTime UpdatedAt { get; }
        public int? UpdatedByUserId { get; }

        public JournalDetailUpdatedEvent(JournalDetailId id, DateTime updatedAt, int? updatedByUserId)
        {
            JournalDetailId = id;
            UpdatedAt = updatedAt;
            UpdatedByUserId = updatedByUserId;
        }
    }
}