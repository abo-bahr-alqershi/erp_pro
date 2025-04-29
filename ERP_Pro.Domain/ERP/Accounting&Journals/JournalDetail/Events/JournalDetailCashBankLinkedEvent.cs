using System;
using Domain.Common;

namespace Accounting.Domain.Journals.Events
{
    /// <summary>
    /// حدث عند ربط تفاصيل القيد اليومي بصندوق أو بنك
    /// </summary>
    public class JournalDetailCashBankLinkedEvent : DomainEventBase
    {
        public JournalDetailId JournalDetailId { get; }
        public long? CashBankNo { get; }
        public DateTime LinkedAt { get; }
        public int? LinkedByUserId { get; }

        public JournalDetailCashBankLinkedEvent(JournalDetailId id, long? cashBankNo, DateTime linkedAt, int? linkedByUserId)
        {
            JournalDetailId = id;
            CashBankNo = cashBankNo;
            LinkedAt = linkedAt;
            LinkedByUserId = linkedByUserId;
        }
    }
}