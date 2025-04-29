using System;
using ERP.Domain.Common;

namespace ERP.Domain.Accounting.Events
{
    /// <summary>
    /// يُطلق عند تنفيذ عملية إغلاق الأرصدة الصفرية.
    /// Triggered when closing zero balances for accounts.
    /// </summary>
    public class MasterJournalClosedZeroBalanceEvent : DomainEventBase
    {
        public MasterJournalClosedZeroBalanceEvent(Guid masterJournalId, DateTime closedAt, int closedByUserId)
        {
            MasterJournalId = masterJournalId;
            ClosedAt = closedAt;
            ClosedByUserId = closedByUserId;
        }

        public Guid MasterJournalId { get; }
        public DateTime ClosedAt { get; }
        public int ClosedByUserId { get; }
    }
}