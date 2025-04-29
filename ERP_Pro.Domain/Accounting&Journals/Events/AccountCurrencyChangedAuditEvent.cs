using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Domain.Accounting.Events
{
    /// <summary>
    /// حدث تدقيق عند أي عملية إضافة/تعديل/حذف على عملات الحساب (ACCOUNT_CURR)
    /// مستوحى من التريجر: AUD_ACCOUNT_CURR_TGR
    /// </summary>
    public class AccountCurrencyChangedAuditEvent : DomainEventBase
    {
        public Guid AccountCurrencyId { get; }
        public Guid AccountId { get; }
        public string ChangeType { get; }
        public int? ChangedByUserId { get; }
        public DateTime ChangeDate { get; }
        public string? OldValues { get; }
        public string? NewValues { get; }

        public AccountCurrencyChangedAuditEvent(Guid accountCurrencyId, Guid accountId, string changeType, int? changedByUserId, DateTime changeDate, string? oldValues = null, string? newValues = null)
        {
            AccountCurrencyId = accountCurrencyId;
            AccountId = accountId;
            ChangeType = changeType;
            ChangedByUserId = changedByUserId;
            ChangeDate = changeDate;
            OldValues = oldValues;
            NewValues = newValues;
        }
    }
}