using System;
using Common.Domain.Events;
using Accounting.Domain.ValueObjects;

namespace Accounting.Domain.Events
{
    /// <summary>
    /// حدث تدقيقي لأي تغيير على صلاحية نوع السند (إضافة/تعديل/حذف)
    /// مصدر الحدث: التريجر AUD_GLS_VCHR_TYP_PRV_TGR
    /// </summary>
    public class JournalVoucherTypePrivilegeChangedAuditEvent : DomainEventBase
    {
        public JournalVoucherTypePrivilegeId Id { get; }
        public string OperationType { get; }
        public string? UserName { get; }
        public DateTime Timestamp { get; }
        public bool? AddFlag { get; }
        public bool? ViewFlag { get; }

        public JournalVoucherTypePrivilegeChangedAuditEvent(
            JournalVoucherTypePrivilegeId id,
            string operationType,
            string? userName,
            DateTime timestamp,
            bool? addFlag,
            bool? viewFlag)
        {
            Id = id;
            OperationType = operationType;
            UserName = userName;
            Timestamp = timestamp;
            AddFlag = addFlag;
            ViewFlag = viewFlag;
        }
    }
}