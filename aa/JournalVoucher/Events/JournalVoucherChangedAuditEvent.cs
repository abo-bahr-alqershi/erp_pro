using System;
using Common.Domain.Events;
using Accounting.Domain.ValueObjects;

namespace Accounting.Domain.Events
{
    /// <summary>
    /// حدث تدقيقي لأي تغيير على سند القيد (إضافة، تعديل، حذف، ترحيل، إلغاء ترحيل)
    /// </summary>
    public class JournalVoucherChangedAuditEvent : DomainEventBase
    {
        public JournalVoucherId Id { get; }
        public string OperationType { get; }
        public string? UserName { get; }
        public DateTime Timestamp { get; }
        public int? CompanyNo { get; }
        public int? BranchNo { get; }
        public DateTime? VoucherDate { get; }
        public bool? Posted { get; }
        public string? Description { get; }

        public JournalVoucherChangedAuditEvent(
            JournalVoucherId id,
            string operationType,
            string? userName,
            DateTime timestamp,
            int? companyNo,
            int? branchNo,
            DateTime? voucherDate,
            bool? posted,
            string? description)
        {
            Id = id;
            OperationType = operationType;
            UserName = userName;
            Timestamp = timestamp;
            CompanyNo = companyNo;
            BranchNo = branchNo;
            VoucherDate = voucherDate;
            Posted = posted;
            Description = description;
        }
    }
}