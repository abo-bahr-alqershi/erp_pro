using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Domain.Accounting.Events
{
    /// <summary>
    /// حدث تدقيق عند أي عملية إضافة/تعديل/حذف على مجموعات الحسابات (ACCOUNT_GROUPING)
    /// مستوحى من التريجر: AUD_ACCOUNT_GROUPING_TGR
    /// </summary>
    public class AccountGroupingChangedAuditEvent : DomainEventBase
    {
        public int GroupingId { get; }
        public string ChangeType { get; }
        public int? ChangedByUserId { get; }
        public DateTime ChangeDate { get; }
        public string? OldValues { get; }
        public string? NewValues { get; }

        public AccountGroupingChangedAuditEvent(int groupingId, string changeType, int? changedByUserId, DateTime changeDate, string? oldValues = null, string? newValues = null)
        {
            GroupingId = groupingId;
            ChangeType = changeType;
            ChangedByUserId = changedByUserId;
            ChangeDate = changeDate;
            OldValues = oldValues;
            NewValues = newValues;
        }
    }
}