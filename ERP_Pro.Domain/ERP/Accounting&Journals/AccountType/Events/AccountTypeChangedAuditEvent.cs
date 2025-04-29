using System;
using Common.Domain.Events;
using Accounting.Domain.ValueObjects;

namespace Accounting.Domain.Events
{
    /// <summary>
    /// حدث تدقيقي/دوميني لأي تغيير أو حذف في نوع الحساب
    /// مصدر الحدث: التريجر AUD_ACCOUNT_TYPES_TGR على ACCOUNT_TYPES
    /// </summary>
    public class AccountTypeChangedAuditEvent : DomainEventBase
    {
        public AccountTypeId TypeId { get; }
        public string OperationType { get; }
        public string? UserName { get; }
        public DateTime Timestamp { get; }
        public int? TypeNo { get; }
        public string AccountTypeName { get; }
        public string? AccountTypeEName { get; }

        public AccountTypeChangedAuditEvent(
            AccountTypeId typeId,
            string operationType,
            string? userName,
            DateTime timestamp,
            int? typeNo,
            string accountTypeName,
            string? accountTypeEName)
        {
            TypeId = typeId;
            OperationType = operationType;
            UserName = userName;
            Timestamp = timestamp;
            TypeNo = typeNo;
            AccountTypeName = accountTypeName;
            AccountTypeEName = accountTypeEName;
        }
    }
}