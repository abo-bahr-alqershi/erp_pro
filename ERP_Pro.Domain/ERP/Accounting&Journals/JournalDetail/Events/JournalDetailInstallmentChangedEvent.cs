using System;
using Domain.Common;

namespace Accounting.Domain.Journals.Events
{
    /// <summary>
    /// حدث عند تغيير حالة الأقساط المرتبطة بالسطر
    /// </summary>
    public class JournalDetailInstallmentChangedEvent : DomainEventBase
    {
        public JournalDetailId JournalDetailId { get; }
        public string Action { get; }
        public DateTime EventDate { get; }
        public int? UserId { get; }

        public JournalDetailInstallmentChangedEvent(JournalDetailId id, string action, DateTime eventDate, int? userId)
        {
            JournalDetailId = id;
            Action = action;
            EventDate = eventDate;
            UserId = userId;
        }
    }
}