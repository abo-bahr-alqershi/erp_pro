using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Domain.Accounting.Events
{
    /// <summary>
    /// حدث تدقيق عند أي عملية على الأرصدة الافتتاحية (OPEN_BAL)
    /// مستوحى من التريجر: AUD_OPEN_BAL_TGR
    /// </summary>
    public class OpenBalanceChangedAuditEvent : DomainEventBase
    {
        public Guid OpenBalanceId { get; }
        public Guid AccountId { get; }
        public string ChangeType { get; }
        public int? ChangedByUserId { get; }
        public DateTime ChangeDate { get; }
        public string? OldValues { get; }
        public string? NewValues { get; }

        public OpenBalanceChangedAuditEvent(Guid openBalanceId, Guid accountId, string changeType, int? changedByUserId, DateTime changeDate, string? oldValues = null, string? newValues = null)
        {
            OpenBalanceId = openBalanceId;
            AccountId = accountId;
            ChangeType = changeType;
            ChangedByUserId = changedByUserId;
            ChangeDate = changeDate;
            OldValues = oldValues;
            NewValues = newValues;
        }
    }
}