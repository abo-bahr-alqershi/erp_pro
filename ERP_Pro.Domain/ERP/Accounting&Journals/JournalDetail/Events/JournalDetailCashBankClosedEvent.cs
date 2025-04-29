using System;
using Domain.Common;

namespace Accounting.Domain.Journals.Events
{
    /// <summary>
    /// حدث عند محاولة التعامل مع صندوق أو بنك مغلق
    /// </summary>
    public class JournalDetailCashBankClosedEvent : DomainEventBase
    {
        public JournalDetailId JournalDetailId { get; }
        public long? CashBankNo { get; }
        public DateTime EventDate { get; }

        public JournalDetailCashBankClosedEvent(JournalDetailId id, long? cashBankNo, DateTime eventDate)
        {
            JournalDetailId = id;
            CashBankNo = cashBankNo;
            EventDate = eventDate;
        }
    }
}