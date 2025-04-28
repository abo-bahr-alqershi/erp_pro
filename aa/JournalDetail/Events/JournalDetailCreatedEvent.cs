using System;
using Domain.Common;

namespace Accounting.Domain.Journals.Events
{
    /// <summary>
    /// حدث عند إنشاء تفاصيل قيد جديد
    /// </summary>
    public class JournalDetailCreatedEvent : DomainEventBase
    {
        public JournalDetailId JournalDetailId { get; }
        public DateTime CreatedAt { get; }
        public int? CreatedByUserId { get; }

        public JournalDetailCreatedEvent(JournalDetailId id, DateTime createdAt, int? createdByUserId)
        {
            JournalDetailId = id;
            CreatedAt = createdAt;
            CreatedByUserId = createdByUserId;
        }
    }
}