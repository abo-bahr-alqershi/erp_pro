using System;
using Common.Domain.Events;
using Accounting.Domain.ValueObjects;

namespace Accounting.Domain.Events
{
    /// <summary>
    /// حدث تدقيقي/دوميني لأي تغيير أو حذف في مجموعة الحسابات
    /// مصدر الحدث: التريجر AUD_ACCOUNT_GROUPING_TGR على ACCOUNT_GROUPING
    /// </summary>
    public class AccountGroupChangedAuditEvent : DomainEventBase
    {
        public AccountGroupId GroupId { get; }
        public string OperationType { get; }
        public string? UserName { get; }
        public DateTime Timestamp { get; }
        public int? GroupNo { get; }
        public string GroupName { get; }
        public string? GroupEName { get; }

        public AccountGroupChangedAuditEvent(
            AccountGroupId groupId,
            string operationType,
            string? userName,
            DateTime timestamp,
            int? groupNo,
            string groupName,
            string? groupEName)
        {
            GroupId = groupId;
            OperationType = operationType;
            UserName = userName;
            Timestamp = timestamp;
            GroupNo = groupNo;
            GroupName = groupName;
            GroupEName = groupEName;
        }
    }
}