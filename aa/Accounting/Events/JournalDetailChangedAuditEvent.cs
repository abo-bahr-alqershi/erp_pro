using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Domain.Accounting.Events
{
    /// <summary>
    /// حدث تدقيق عند أي عملية على تفاصيل القيود اليومية (DETAIL_JOURNAL_V)
    /// مستوحى من التريجر: AUD_DETAIL_INV_TGR
    /// </summary>
    public class JournalDetailChangedAuditEvent : DomainEventBase
    {
        public Guid JournalDetailId { get; }
        public Guid AccountId { get; }
        public string ChangeType { get; }
        public int? ChangedByUserId { get; }
        public DateTime ChangeDate { get; }
        public string? OldValues { get; }
        public string? NewValues { get; }

        public JournalDetailChangedAuditEvent(Guid journalDetailId, Guid accountId, string changeType, int? changedByUserId, DateTime changeDate, string? oldValues = null, string? newValues = null)
        {
            JournalDetailId = journalDetailId;
            AccountId = accountId;
            ChangeType = changeType;
            ChangedByUserId = changedByUserId;
            ChangeDate = changeDate;
            OldValues = oldValues;
            NewValues = newValues;
        }
    }
}