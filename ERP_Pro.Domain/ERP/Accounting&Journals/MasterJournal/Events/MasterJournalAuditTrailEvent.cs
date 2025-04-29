using System;
using ERP.Domain.Common;

namespace ERP.Domain.Accounting.Events
{
    /// <summary>
    /// يُطلق لكل عملية تدقيق (Audit) على رأس القيد - مستوحى من التريجرات.
    /// Triggered for every audit operation (add, update, delete) on MasterJournal.
    /// </summary>
    public class MasterJournalAuditTrailEvent : DomainEventBase
    {
        public MasterJournalAuditTrailEvent(
            Guid masterJournalId,
            string operationType,
            DateTime operationDate,
            int operationUserId,
            string fieldName,
            string oldValue,
            string newValue,
            string operationTerminal)
        {
            MasterJournalId = masterJournalId;
            OperationType = operationType;
            OperationDate = operationDate;
            OperationUserId = operationUserId;
            FieldName = fieldName;
            OldValue = oldValue;
            NewValue = newValue;
            OperationTerminal = operationTerminal;
        }

        public Guid MasterJournalId { get; }
        public string OperationType { get; }
        public DateTime OperationDate { get; }
        public int OperationUserId { get; }
        public string FieldName { get; }
        public string OldValue { get; }
        public string NewValue { get; }
        public string OperationTerminal { get; }
    }
}