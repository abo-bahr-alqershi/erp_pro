using System;
using Domain.Common;

namespace Accounting.Domain.Journals.Events
{
    /// <summary>
    /// حدث عند وجود رصيد غير كافٍ في الصندوق أو البنك
    /// </summary>
    public class JournalDetailCashBankBalanceInsufficientEvent : DomainEventBase
    {
        public JournalDetailId JournalDetailId { get; }
        public long? CashBankNo { get; }
        public decimal? RequiredAmount { get; }
        public decimal? AvailableAmount { get; }
        public DateTime EventDate { get; }

        public JournalDetailCashBankBalanceInsufficientEvent(JournalDetailId id, long? cashBankNo, decimal? requiredAmount, decimal? availableAmount, DateTime eventDate)
        {
            JournalDetailId = id;
            CashBankNo = cashBankNo;
            RequiredAmount = requiredAmount;
            AvailableAmount = availableAmount;
            EventDate = eventDate;
        }
    }
}