using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Domain.Accounting.Events
{
    /// <summary>
    /// حدث تدقيق عند أي عملية إضافة/تعديل/حذف على نوع الحساب (ACCOUNT_TYPES)
    /// مستوحى من التريجر: AUD_ACCOUNT_TYPES_TGR
    /// </summary>
    public class AccountTypeChangedAuditEvent : DomainEventBase
    {
        public int AccountTypeId { get; }
        public string ChangeType { get; }
        public int? ChangedByUserId { get; }
        public DateTime ChangeDate { get; }
        public string? OldValues { get; }
        public string? NewValues { get; }

        public AccountTypeChangedAuditEvent(int accountTypeId, string changeType, int? changedByUserId, DateTime changeDate, string? oldValues = null, string? newValues = null)
        {
            AccountTypeId = accountTypeId;
            ChangeType = changeType;
            ChangedByUserId = changedByUserId;
            ChangeDate = changeDate;
            OldValues = oldValues;
            NewValues = newValues;
        }
    }
}