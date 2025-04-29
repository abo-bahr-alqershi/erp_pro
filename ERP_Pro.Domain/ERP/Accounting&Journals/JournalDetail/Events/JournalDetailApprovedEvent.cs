using System;
using Domain.Common;

namespace Accounting.Domain.Journals.Events
{
    /// <summary>
    /// حدث عند اعتماد تفاصيل القيد اليومي
    /// </summary>
    public class JournalDetailApprovedEvent : DomainEventBase
    {
        public JournalDetailId JournalDetailId { get; }
        public DateTime ApprovedAt { get; }
        public int? ApprovedByUserId { get; }

        public JournalDetailApprovedEvent(JournalDetailId id, DateTime approvedAt, int? approvedByUserId)
        {
            JournalDetailId = id;
            ApprovedAt = approvedAt;
            ApprovedByUserId = approvedByUserId;
        }
    }
}