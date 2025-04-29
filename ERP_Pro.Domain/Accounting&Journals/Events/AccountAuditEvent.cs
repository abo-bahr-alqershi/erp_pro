using ERP_Pro.Domain.Common.Events;
using ERP_Pro.Domain.Accounting.ValueObjects;

namespace ERP_Pro.Domain.Accounting.Events
{
    public class AccountAuditEvent : DomainEventBase
    {
        public AccountId AccountId { get; }
        public string ChangeType { get; }
        public DateTime ChangeDate { get; }
        public int? ChangedByUserId { get; }
        public AccountAuditEvent(AccountId accountId, string changeType, DateTime changeDate, int? userId)
        {
            AccountId = accountId;
            ChangeType = changeType;
            ChangeDate = changeDate;
            ChangedByUserId = userId;
        }
    }
}