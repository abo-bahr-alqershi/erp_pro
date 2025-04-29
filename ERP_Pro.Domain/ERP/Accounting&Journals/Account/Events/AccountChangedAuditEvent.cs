using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Domain.Accounting.Events
{
    /// <summary>
    /// حدث تدقيق عند أي عملية إضافة/تعديل/حذف على الحساب الرئيسي (ACCOUNT)
    /// مستوحى من التريجر: AUD_ACCOUNT_TGR
    /// </summary>
    public class AccountChangedAuditEvent : DomainEventBase
    {
        public Guid AccountId { get; }
        public string ChangeType { get; } // Insert, Update, Delete
        public int? ChangedByUserId { get; }
        public DateTime ChangeDate { get; }
        public string? OldValues { get; }
        public string? NewValues { get; }

        public AccountChangedAuditEvent(Guid accountId, string changeType, int? changedByUserId, DateTime changeDate, string? oldValues = null, string? newValues = null)
        {
            AccountId = accountId;
            ChangeType = changeType;
            ChangedByUserId = changedByUserId;
            ChangeDate = changeDate;
            OldValues = oldValues;
            NewValues = newValues;
        }
    }
}