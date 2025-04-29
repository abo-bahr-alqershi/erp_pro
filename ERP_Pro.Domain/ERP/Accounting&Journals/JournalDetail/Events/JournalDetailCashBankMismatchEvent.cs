using System;
using Domain.Common;

namespace Accounting.Domain.Journals.Events
{
    /// <summary>
    /// حدث عند وجود تعارض في بيانات الصندوق أو البنك
    /// </summary>
    public class JournalDetailCashBankMismatchEvent : DomainEventBase
    {
        public JournalDetailId JournalDetailId { get; }
        public long? CashBankNo { get; }
        public DateTime DetectedAt { get; }
        public string Details { get; }

        public JournalDetailCashBankMismatchEvent(JournalDetailId id, long? cashBankNo, DateTime detectedAt, string details)
        {
            JournalDetailId = id;
            CashBankNo = cashBankNo;
            DetectedAt = detectedAt;
            Details = details;
        }
    }
}