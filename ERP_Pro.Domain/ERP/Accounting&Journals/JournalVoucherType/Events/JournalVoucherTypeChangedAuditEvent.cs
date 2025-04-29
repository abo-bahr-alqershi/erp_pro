using System;
using Common.Domain.Events;
using Accounting.Domain.ValueObjects;

namespace Accounting.Domain.Events
{
    /// <summary>
    /// حدث تدقيقي لأي تغيير أو حذف في نوع سند القيد المحاسبي
    /// مصدر الحدث: التريجر AUD_GLS_VCHR_TYP_ACNT_TGR
    /// </summary>
    public class JournalVoucherTypeChangedAuditEvent : DomainEventBase
    {
        public JournalVoucherTypeId TypeId { get; }
        public string OperationType { get; }
        public string? UserName { get; }
        public DateTime Timestamp { get; }
        public int? VoucherTypeNo { get; }
        public string? AccountCode { get; }
        public string? AccountDtlCode { get; }
        public int? AccountDtlType { get; }

        public JournalVoucherTypeChangedAuditEvent(
            JournalVoucherTypeId typeId,
            string operationType,
            string? userName,
            DateTime timestamp,
            int? voucherTypeNo,
            string? accountCode,
            string? accountDtlCode,
            int? accountDtlType)
        {
            TypeId = typeId;
            OperationType = operationType;
            UserName = userName;
            Timestamp = timestamp;
            VoucherTypeNo = voucherTypeNo;
            AccountCode = accountCode;
            AccountDtlCode = accountDtlCode;
            AccountDtlType = accountDtlType;
        }
    }
}