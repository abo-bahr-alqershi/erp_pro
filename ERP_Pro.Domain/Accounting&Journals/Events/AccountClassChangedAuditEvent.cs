using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Domain.Accounting.Events
{
    /// <summary>
    /// حدث تدقيق عند أي تغيير في تصنيف الحساب (IAS_ACCOUNT_CLASS)
    /// مستوحى من التريجر: AUD_ACCOUNT_CLASS_TGR
    /// </summary>
    public class AccountClassChangedAuditEvent : DomainEventBase
    {
        public int AccountClassId { get; }
        public string ChangeType { get; }
        public int? ChangedByUserId { get; }
        public DateTime ChangeDate { get; }
        public string? OldValues { get; }
        public string? NewValues { get; }

        public AccountClassChangedAuditEvent(int accountClassId, string changeType, int? changedByUserId, DateTime changeDate, string? oldValues = null, string? newValues = null)
        {
            AccountClassId = accountClassId;
            ChangeType = changeType;
            ChangedByUserId = changedByUserId;
            ChangeDate = changeDate;
            OldValues = oldValues;
            NewValues = newValues;
        }
    }
}